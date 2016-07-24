//
//  UIButton+Additions.swift
//
//  Created by Geetika Gupta on 01/04/16.
//  Copyright © 2016 Modi. All rights reserved.
//

import Foundation
import UIKit

// MARK: - UIButton Extension
extension UIButton {
    
    /**
     Override method of awake from nib to change font size as per aspect ratio.
     */
    override public func awakeFromNib() {
        
        super.awakeFromNib()
        
        if let font = self.titleLabel?.font {
            
            let screenRatio = (UIScreen.mainScreen().bounds.size.width / CGFloat(Constants.DEFAULT_SCREEN_RATIO))
            let fontSize = font.pointSize * screenRatio
            
            //self.titleLabel!.font = UIFont(name: font.fontName, size: fontSize)!
        }
    }
    
    /**
     Make underline title
     */
    func underlineTitle() {
        
        if let buttonTitle = self.titleLabel?.text {
            let range = NSMakeRange(0, buttonTitle.length)
            underlineTitle(range)
        }
    }
    
    func underlineTitle(range: NSRange) {
        
        if let buttonTitle = self.titleLabel?.text {
            let titleString : NSMutableAttributedString = NSMutableAttributedString(string: buttonTitle)
            titleString.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.StyleSingle.rawValue, range: range)
            self.setAttributedTitle(titleString, forState: .Normal)
        }
    }
    
    func underlineTextInTitle(text: String) {
        underlineTextsInTitle(text)
    }
    
    func underlineTextsInTitle(texts: String...) {
        
        if let buttonTitle = self.titleLabel?.text {
            let titleString : NSMutableAttributedString = NSMutableAttributedString(string: buttonTitle)
            
            for text in texts {
                let range = (buttonTitle as NSString).rangeOfString(text)
                titleString.addAttribute(NSUnderlineStyleAttributeName, value: NSUnderlineStyle.StyleSingle.rawValue, range: range)
            }
            
            self.setAttributedTitle(titleString, forState: .Normal)
        }
    }

}