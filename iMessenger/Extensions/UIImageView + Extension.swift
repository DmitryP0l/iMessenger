//
//  UIImageView + Extension.swift
//  iMessenger
//
//  Created by lion on 13.07.22.
//

import Foundation
import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
