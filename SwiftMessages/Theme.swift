//
//  Theme.swift
//  SwiftMessages
//
//  Created by Timothy Moose on 8/7/16.
//  Copyright © 2016 SwiftKick Mobile LLC. All rights reserved.
//

import UIKit

/// The theme enum specifies the built-in theme options
public enum Theme {
    case info
}

/// The Icon enum provides type-safe access to the included icons.
public enum Icon: String {

    case info = "infoIcon"
    case infoLight = "infoIconLight"
    case infoSubtle = "infoIconSubtle"
    
    /// Returns the associated image.
    public var image: UIImage {
        return UIImage(named: rawValue, in: Bundle.sm_frameworkBundle(), compatibleWith: nil)!.withRenderingMode(.alwaysTemplate)
    }
}

/// The IconStyle enum specifies the different variations of the included icons.
public enum IconStyle {
    
    case `default`
    case light
    case subtle
    case none
    
    /// Returns the image for the given theme
    public func image(theme: Theme) -> UIImage? {
        switch (theme, self) {
        case (.info, .default): return Icon.info.image
        case (.info, .light): return Icon.infoLight.image
        case (.info, .subtle): return Icon.infoSubtle.image
        default: return nil
        }
    }
}
