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
                                   backgroundColor: .buttonBlackColor)
    private let loginAuthButton = UIButton(title: "Login",
                                   titleColor: .buttonRedColor(),
                                   backgroundColor: .white,
                                   isShadow: true)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .mainWhiteColor()
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
