//
//  ViewController.swift
//  iMessenger
//
//  Created by lion on 12.07.22.
//

import UIKit

final class AuthViewController: UIViewController {
    
    private let logoImageView = UIImageView(image: UIImage(systemName: "hare"), contentMode: .scaleAspectFit)
    
    private let googleLabel = UILabel(text: "Get started with")
    private let emailLabel = UILabel(text: "Or sign up with")
    private let alreadyOnboardLabel = UILabel(text: "Already onboard")
    
    private let googleAuthButton = UIButton(title: "Google",
                                    titleColor: .black,
                                    backgroundColor: .white,
                                    isShadow: true)
    private let emailAuthButton = UIButton(title: "Email",
                                   titleColor: .white,
                                   backgroundColor: .buttonBlackColor())
    private let loginAuthButton = UIButton(title: "Login",
                                   titleColor: .buttonRedColor(),
                                   backgroundColor: .white,
                                   isShadow: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        logoImageView.tintColor = #colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1)
        googleAuthButton.customizeIconButton(image: UIImage(systemName: "g.circle.fill"))
        setupConstraints()
    }
}

// MARK: - setup Constraints

extension AuthViewController {
    private func setupConstraints() {
        
        let googleView = ButtonFormView(label: googleLabel, button: googleAuthButton)
        let emailView = ButtonFormView(label: emailLabel, button: emailAuthButton)
        let loginView = ButtonFormView(label: alreadyOnboardLabel, button: loginAuthButton)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView], axis: .vertical, spacing: 40)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(logoImageView)
        view.addSubview(stackView)
        
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        logoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
    }
}

// MARK: - SwiftUI
import SwiftUI

struct AuthVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = AuthViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
    }
}
