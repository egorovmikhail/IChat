//
//  AuthViewController.swift
//  IChat
//
//  Created by Михаил Егоров on 17.01.2021.
//

import UIKit

class AuthViewController: UIViewController {
  
//  MARK: - PROPERTIES
  let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
  
  let googleLabel = UILabel(text: "Get started with")
  let emailLabel = UILabel(text: "Or sign up with")
  let alreadyOnboardLabel = UILabel(text: "Already onboard?")
    
  let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
  let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark())
  let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShadow: true)
  
// MARK: - viewDidLoad
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white 
    setupConstraints()
  }
  
  private func setupConstraints(){
    logoImageView.translatesAutoresizingMaskIntoConstraints = false
    
    let googlView = ButtonFormView(label: googleLabel, button: googleButton)
    let emailView = ButtonFormView(label: emailLabel, button: emailButton)
    let loginView = ButtonFormView(label: alreadyOnboardLabel, button: loginButton)
    
    let stackView = UIStackView(arrangedSubviews: [googlView, emailView, loginView], axis: .vertical, spacing: 40)
    stackView.translatesAutoresizingMaskIntoConstraints = false
    
    view.addSubview(logoImageView)
    view.addSubview(stackView)
    
    NSLayoutConstraint.activate([
      logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 160),
      logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
    ])
    
    NSLayoutConstraint.activate([
      stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 160),
      stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
      stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
    ])
  }
}

// MARK: PREVIEW
import SwiftUI

struct AuthVC_Provider: PreviewProvider {
  static var previews: some View {
    ContainerView().ignoresSafeArea(.all)
  }
  
  struct ContainerView: UIViewControllerRepresentable {
    
    let viewController = AuthViewController()
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<AuthVC_Provider.ContainerView>) -> AuthViewController {
      return viewController
    }
    
    func updateUIViewController(_ uiViewController: AuthVC_Provider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<AuthVC_Provider.ContainerView>) {
      
    }
  }
}

