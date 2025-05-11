import Foundation

struct Payment: Codable {
    let id: UUID
    let amount: Double
    let currency: String
    let description: String
    let status: PaymentStatus
    let timestamp: Date
    
    init(amount: Double, currency: String, description: String) {
        self.id = UUID()
        self.amount = amount
        self.currency = currency
        self.description = description
        self.status = .pending
        self.timestamp = Date()
    }
}

enum PaymentStatus: String, Codable {
    case pending
    case processing
    case completed
    case failed
    case refunded
} 