//
//  SignUpViewController.swift
//  IChat
//
//  Created by Михаил Егоров on 18.01.2021.
//

import UIKit

class SignUpViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .orange
  }
}

// MARK: PREVIEW
import SwiftUI

struct SignUpVC_Provider: PreviewProvider {
  static var previews: some View {
    ContainerView().ignoresSafeArea(.all)
  }
  
  struct ContainerView: UIViewControllerRepresentable {
    
    let viewController = SignUpViewController()
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SignUpVC_Provider.ContainerView>) -> SignUpViewController {
      return viewController
    }
    
    func updateUIViewController(_ uiViewController: SignUpVC_Provider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<SignUpVC_Provider.ContainerView>) {
    }
  }
}
