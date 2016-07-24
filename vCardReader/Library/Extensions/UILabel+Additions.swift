//
//  UILabel+Additions.swift
//
//  Created by Geetika Gupta on 01/04/16.
//  Copyright © 2016 Modi. All rights reserved.
//

import Foundation
import UIKit
// MARK: - UILabel Extension
extension UILabel {

    /**
     Override method of awake from nib to change font size as per aspect ratio.
     */
    override public func awakeFromNib() {
        
        super.awakeFromNib()
      
        if let font = self.font {
            
            let screenRatio = (UIScreen.mainScreen().bounds.size.width / Constants.DEFAULT_SCREEN_RATIO)
            let fontSize = font.pointSize * screenRatio
            //self.font = UIFont(name: font.fontName, size: fontSize)!

        }
    }
}