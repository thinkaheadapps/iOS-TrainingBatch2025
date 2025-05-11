import Foundation

struct PaymentCard: Codable {
    let cardNumber: String
    let expiryMonth: Int
    let expiryYear: Int
    let cvv: String
    let cardholderName: String
    
    var isValid: Bool {
        // Basic validation
        guard cardNumber.count == 16,
              expiryMonth >= 1 && expiryMonth <= 12,
              expiryYear >= Calendar.current.component(.year, from: Date()),
              cvv.count == 3,
              !cardholderName.isEmpty else {
            return false
        }
        return true
    }
    
    // Mask card number for security
    var maskedCardNumber: String {
        let lastFour = String(cardNumber.suffix(4))
        return "**** **** **** \(lastFour)"
    }
} 