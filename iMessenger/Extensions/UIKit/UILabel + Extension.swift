//
//  Label + Extension.swift
//  iMessenger
//
//  Created by lion on 13.07.22.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        self.text = text
        self.font = font
    }
}
