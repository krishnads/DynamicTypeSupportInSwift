//
//  UIFontDescriptor+CustomFonts.swift
//  DynamicTypeSupportDemo
//
//  Created by Krishana on 11/7/16.
//  Copyright © 2016 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

import UIKit

let ANUIFontTextStyleCaption3 : String = "ANUIFontTextStyleCaption3"
let ANUIFontTextStyleCaption4 : String = "ANUIFontTextStyleCaption4"

//let onceToken : dispatch_once_t
var fontSizeTable : NSDictionary = NSDictionary()

extension UIFontDescriptor {
    
    static func preferredAvenirNextFontDescriptorWithTextStyle(style : String) -> UIFontDescriptor {
        
        fontSizeTable = [
            UIFontTextStyle.headline: [
                UIContentSizeCategory.accessibilityExtraExtraExtraLarge: 26,
                UIContentSizeCategory.accessibilityExtraExtraLarge: 25,
                UIContentSizeCategory.accessibilityExtraLarge: 24,
                UIContentSizeCategory.accessibilityLarge: 24,
                UIContentSizeCategory.accessibilityMedium: 23,
                UIContentSizeCategory.extraExtraExtraLarge: 23,
                UIContentSizeCategory.extraExtraLarge: 22,
                UIContentSizeCategory.extraLarge: 21,
                UIContentSizeCategory.large: 20,
                UIContentSizeCategory.medium: 19,
                UIContentSizeCategory.small: 18,
                UIContentSizeCategory.extraSmall: 17
            ],
            UIFontTextStyle.subheadline: [
                UIContentSizeCategory.accessibilityExtraExtraExtraLarge: 24,
                UIContentSizeCategory.accessibilityExtraExtraLarge: 23,
                UIContentSizeCategory.accessibilityExtraLarge: 22,
                UIContentSizeCategory.accessibilityLarge: 21,
                UIContentSizeCategory.accessibilityMedium: 20,
                UIContentSizeCategory.extraExtraExtraLarge: 19,
                UIContentSizeCategory.extraExtraLarge: 18,
                UIContentSizeCategory.extraLarge: 17,
                UIContentSizeCategory.large: 16,
                UIContentSizeCategory.medium: 15,
                UIContentSizeCategory.small: 14,
                UIContentSizeCategory.extraSmall: 13
            ],
            UIFontTextStyle.body: [
                UIContentSizeCategory.accessibilityExtraExtraExtraLarge: 24,
                UIContentSizeCategory.accessibilityExtraExtraLarge: 23,
                UIContentSizeCategory.accessibilityExtraLarge: 22,
                UIContentSizeCategory.accessibilityLarge: 21,
                UIContentSizeCategory.accessibilityMedium: 20,
                UIContentSizeCategory.extraExtraExtraLarge: 19,
                UIContentSizeCategory.extraExtraLarge: 18,
                UIContentSizeCategory.extraLarge: 17,
                UIContentSizeCategory.large: 16,
                UIContentSizeCategory.medium: 15,
                UIContentSizeCategory.small: 14,
                UIContentSizeCategory.extraSmall: 13
            ]
        ]
        
        let contentSize: String = UIApplication.shared.preferredContentSizeCategory.rawValue
        
        let categoryDic : NSDictionary = fontSizeTable.object(forKey: style) as! NSDictionary
        let fontSize : NSNumber = categoryDic.object(forKey: contentSize) as! NSNumber        
        return UIFontDescriptor.init(name: self.preferredFontName(), size: CGFloat(fontSize))
        
    }
  
    static func preferredAvenirNextDemiBoldFontDescriptorWithTextStyle(style : String) -> UIFontDescriptor {
        let fontDesc : UIFontDescriptor = self.preferredAvenirNextFontDescriptorWithTextStyle(style: style)
        return fontDesc
        //return fontDesc.withSymbolicTraits(.traitBold)!
    }
    
    static func preferredFontName() -> (String) {
        return "Zapfino"
        //return "Bodoni Ornaments"
        //return "Party LET"
        //return "Bradley Hand"
        //return "Snell Roundhand"
    }
    
}
