//
//  AuthViewController.swift
//  IChat
//
//  Created by Михаил Егоров on 17.01.2021.
//

import UIKit

class AuthViewController: UIViewController {
  
  let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"), contentMode: .scaleAspectFit)
  
  let googleLabel = UILabel(text: "Get started with")
  let emailLabel = UILabel(text: "Or sign up with")
  let alreadyOnboardLabel = UILabel(text: "Already onboard?")
  
  
  let googleButton = UIButton(title: "Google", titleColor: .black, backgroundColor: .white, isShadow: true)
  let emailButton = UIButton(title: "Email", titleColor: .white, backgroundColor: .buttonDark())
  let loginButton = UIButton(title: "Login", titleColor: .buttonRed(), backgroundColor: .white, isShadow: true)

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
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

