//
//  ViewHelper.swift
//  MafiaManager
//
//  Created by Robert Stigler on 4/7/19.
//  Copyright © 2019 Aishwarya Shashidhar. All rights reserved.
//

import UIKit

class CoreGraphicsHelper: NSObject {

    static let selectedBorderColor: CGColor = UIColor(red: 0.0, green: 122.0/255.0, blue: 1.0, alpha: 1.0).cgColor
    static let selectedBorderWidth: CGFloat = 5
    
    static let unselectedBorderColor: CGColor = UIColor.clear.cgColor
    static let unselectedBorderWidth: CGFloat = 0
    
    // Takes any imageView and gives it a border of width and color depending on
    // above constants
    static func createSelectedImageBorder(imageView: UIImageView) {
        imageView.layer.borderColor = selectedBorderColor
        imageView.layer.borderWidth = selectedBorderWidth
    }
    
    static func removeSelectedImageBorder(imageView: UIImageView) {
        imageView.layer.borderColor = unselectedBorderColor
        imageView.layer.borderWidth = unselectedBorderWidth
    }
}
