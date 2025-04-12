//: [Previous](@previous)

import Foundation

/**
 Explain how MVVM works in iOS. How is it different from MVC, and what are the benefits of using MVVM in Swift apps?
 */

/**
 I'll explain MVVM (Model-View-ViewModel) architecture, compare it with MVC (Model-View-Controller), and highlight its benefits in Swift iOS applications.
 Let's break this down with practical examples:
 MVVM Architecture Components
 */

// Model
struct User {
    let id: String
    let name: String
    let email: String
    let age: Int
}

// ViewModel
class UserViewModel {
    private var user: User
    
    // Published property for reactive updates
    @Published private(set) var displayName: String = ""
    @Published private(set) var ageDisplay: String = ""
    
    init(user: User) {
        self.user = user
        self.formatUserData()
    }
    
    private func formatUserData() {
        displayName = "Name: \(user.name)"
        ageDisplay = "Age: \(user.age) years"
    }
    
    func updateUser(name: String) {
        user = User(id: user.id, name: name, email: user.email, age: user.age)
        formatUserData()
    }
}

// View
class UserProfileView: UIViewController {
    private let viewModel: UserViewModel
    private var cancellables = Set<AnyCancellable>()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(viewModel: UserViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }
    
    private func setupBindings() {
        viewModel.$displayName
            .sink { [weak self] name in
                self?.nameLabel.text = name
            }
            .store(in: &cancellables)
        
        viewModel.$ageDisplay
            .sink { [weak self] age in
                self?.ageLabel.text = age
            }
            .store(in: &cancellables)
    }
}
