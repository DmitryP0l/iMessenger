//
//  SetupProfileViewController.swift
//  iMessenger
//
//  Created by lion on 15.07.22.
//

import UIKit

final class SetupProfileViewController: UIViewController {
    
    private let fullImageView = AddPhotoView()
    
    private let welcomeLabel = UILabel(text: "Set up profile!", font: .avenir26())
    private let fullNameLabel = UILabel(text: "Full name")
    private let aboutMeLabel = UILabel(text: "About me")
    private let sexLabel = UILabel(text: "Sex")
    
    private let fullNameTextField = TextFIeldOneLine(font: .avenir20())
    private let aboutMeTextField = TextFIeldOneLine(font: .avenir20())
    
    private let sexSegmentedControl = UISegmentedControl(first: "Male", second: "Female")
    
    private let goToChatsButton = UIButton(title: "Go to chats", titleColor: .white, backgroundColor: .buttonBlackColor())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }
}

//MARK: - Setup Constraints

extension SetupProfileViewController {
    
    private func setupConstraints() {
        let fullNameStackView = UIStackView(arrangedSubviews: [
            fullNameLabel,
            fullNameTextField
        ],
                                            axis: .vertical,
                                            spacing: 0)
        let aboutMeStackView = UIStackView(arrangedSubviews: [
            aboutMeLabel,
            aboutMeTextField
        ],
                                           axis: .vertical,
                                           spacing: 0)
        let sexStackView = UIStackView(arrangedSubviews: [
            sexLabel,
            sexSegmentedControl
        ],
                                       axis: .vertical,
                                       spacing: 12)
        
        goToChatsButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let centralStackView = UIStackView(arrangedSubviews: [
            fullNameStackView,
            aboutMeStackView,
            sexStackView,
            goToChatsButton
        ],
                                           axis: .vertical,
                                           spacing: 40)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        fullImageView.translatesAutoresizingMaskIntoConstraints = false
        centralStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(fullImageView)
        view.addSubview(centralStackView)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            fullImageView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
            fullImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            centralStackView.topAnchor.constraint(equalTo: fullImageView.bottomAnchor, constant: 40),
            centralStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centralStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            centralStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}

//MARK: - SwiftUI

import SwiftUI

struct SetupProfileVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let viewController = SetupProfileViewController()
        
        func makeUIViewController(context: Context) -> some UIViewController {
            return viewController
        }
        func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        }
    }
}
