import Foundation

enum PaymentError: Error {
    case invalidCard
    case insufficientFunds
    case networkError
    case invalidAmount
    case processingError
}

class PaymentGatewayService {
    static let shared = PaymentGatewayService()
    private init() {}
    
    func processPayment(amount: Double, card: PaymentCard) async throws -> Payment {
        // Validate card
        guard card.isValid else {
            throw PaymentError.invalidCard
        }
        
        // Validate amount
        guard amount > 0 else {
            throw PaymentError.invalidAmount
        }
        
        // Simulate network delay
        try await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        
        // Simulate random processing errors (for demonstration)
        if Int.random(in: 1...10) == 1 {
            throw PaymentError.processingError
        }
        
        // Create payment record
        let payment = Payment(
            amount: amount,
            currency: "USD",
            description: "Payment processed via \(card.maskedCardNumber)"
        )
        
        return payment
    }
    
    func refundPayment(_ payment: Payment) async throws -> Payment {
        // Simulate network delay
        try await Task.sleep(nanoseconds: 1 * 1_000_000_000)
        
        // In a real application, you would make an API call to process the refund
        return Payment(
            amount: -payment.amount,
            currency: payment.currency,
            description: "Refund for payment \(payment.id)"
        )
    }
} 