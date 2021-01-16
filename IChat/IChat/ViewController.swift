//
//  ViewController.swift
//  IChat
//
//  Created by Михаил Егоров on 17.01.2021.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .red
  }
}

// MARK: PREVIEW
import SwiftUI
struct ViewControllerProvider: PreviewProvider {
  static var previews: some View {
    ContainerView().ignoresSafeArea(.all)
  }
  
  struct ContainerView: UIViewControllerRepresentable {
    
    let viewController = ViewController()
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> ViewController {
      return viewController
    }
    
    func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
      
    }
  }
}

