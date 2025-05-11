import SwiftUI

struct PaymentView: View {
    @State private var cardNumber = ""
    @State private var expiryMonth = ""
    @State private var expiryYear = ""
    @State private var cvv = ""
    @State private var cardholderName = ""
    @State private var amount = ""
    @State private var showingAlert = false
    @State private var alertMessage = ""
    @State private var isProcessing = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Card Details")) {
                    TextField("Card Number", text: $cardNumber)
                        .keyboardType(.numberPad)
                    HStack {
                        TextField("MM", text: $expiryMonth)
                            .keyboardType(.numberPad)
                        Text("/")
                        TextField("YY", text: $expiryYear)
                            .keyboardType(.numberPad)
                    }
                    TextField("CVV", text: $cvv)
                        .keyboardType(.numberPad)
                    TextField("Cardholder Name", text: $cardholderName)
                }
                
                Section(header: Text("Payment Amount")) {
                    TextField("Amount", text: $amount)
                        .keyboardType(.decimalPad)
                }
                
                Section {
                    Button(action: processPayment) {
                        if isProcessing {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle())
                        } else {
                            Text("Process Payment")
                        }
                    }
                    .disabled(isProcessing)
                }
            }
            .navigationTitle("Payment Gateway")
            .alert("Payment Status", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text(alertMessage)
            }
        }
    }
    
    private func processPayment() {
        guard let amount = Double(amount),
              let month = Int(expiryMonth),
              let year = Int(expiryYear) else {
            alertMessage = "Please enter valid payment details"
            showingAlert = true
            return
        }
        
        let card = PaymentCard(
            cardNumber: cardNumber,
            expiryMonth: month,
            expiryYear: year,
            cvv: cvv,
            cardholderName: cardholderName
        )
        
        isProcessing = true
        
        Task {
            do {
                let payment = try await PaymentGatewayService.shared.processPayment(amount: amount, card: card)
                await MainActor.run {
                    alertMessage = "Payment successful! Amount: \(payment.amount) \(payment.currency)"
                    showingAlert = true
                    isProcessing = false
                }
            } catch {
                await MainActor.run {
                    alertMessage = "Payment failed: \(error.localizedDescription)"
                    showingAlert = true
                    isProcessing = false
                }
            }
        }
    }
} 