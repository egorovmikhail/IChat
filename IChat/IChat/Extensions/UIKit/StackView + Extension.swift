//
//  StackView + Extension.swift
//  IChat
//
//  Created by Михаил Егоров on 18.01.2021.
//

import UIKit

extension UIStackView {
  convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
    self.init(arrangedSubviews: arrangedSubviews)
    self.axis = axis
    self.spacing = spacing
  }
}
