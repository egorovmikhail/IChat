//
//  UIImageView + Extension.swift
//  IChat
//
//  Created by Михаил Егоров on 18.01.2021.
//

import UIKit

extension UIImageView {
  convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
    self.init()
    
    self.image = image
    self.contentMode = contentMode
  }
}
