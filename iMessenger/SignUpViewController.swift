//
//  SignUpViewController.swift
//  iMessenger
//
//  Created by lion on 13.07.22.
//

import UIKit

final class SignUpViewController: UIViewController {
    
    let welcomeLabel = UILabel(text: "God to see you", font: .avenir26())
    let emailLabel = UILabel(text: "Email")
    let passwordLabel = UILabel(text: "Password")
    let confirmPasswordLabel = UILabel(text: "Confirm password")
    let alreadyOnBoardLabel = UILabel(text: "Already onboard?")
    
    let emailTextField = TextFIeldOneLine(font: .avenir20())
    let passwordTextField = TextFIeldOneLine(font: .avenir20())
    let confirmPasswordTextField = TextFIeldOneLine(font: .avenir20())
    
    let signUpButton = UIButton(title: "Sign Up",
                                titleColor: .white,
                                backgroundColor: .buttonBlackColor(),
                                cornerRadius: 4)
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(UIColor.buttonRedColor(), for: .normal)
        button.titleLabel?.font = UIFont.avenir20()
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }
}

//MARK: - SignUpViewController

extension SignUpViewController {
    
    private func setupConstraints() {
        let emailStackView = UIStackView(arrangedSubviews: [
            emailLabel,
            emailTextField
        ],
                                         axis: .vertical,
                                         spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [
            passwordLabel,
            passwordTextField
        ],
                                            axis: .vertical,
                                            spacing: 0)
        let confirmPasswordStackView = UIStackView(arrangedSubviews: [
            confirmPasswordLabel,
            confirmPasswordTextField
        ],
                                                   axis: .vertical,
                                                   spacing: 0)
        
        signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let centrStackView = UIStackView(arrangedSubviews: [
            emailStackView,
            passwordStackView,
            confirmPasswordStackView,
            signUpButton
        ],
                                    axis: .vertical,
                                    spacing: 40)
        
        let bottomStackView = UIStackView(arrangedSubviews: [
            alreadyOnBoardLabel,
            loginButton
        ],
                                          axis: .horizontal,
                                          spacing: -1)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        centrStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(centrStackView)
        view.addSubview(bottomStackView)
        
        welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        centrStackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 160).isActive = true
        centrStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        centrStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
        bottomStackView.topAnchor.constraint(equalTo: centrStackView.bottomAnchor, constant: 60).isActive = true
        bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        
    }
}

//MARK: - SwiftUI

import SwiftUI

struct SignUpVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = SignUpViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
    }
}
