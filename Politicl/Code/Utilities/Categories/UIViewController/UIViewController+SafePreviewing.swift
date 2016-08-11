//
//  UIViewController+SafePreviewing.swift
//  Wikipedia
//
//  Created by Brian Gerstle on 10/27/15.
//  Copyright © 2015 Wikimedia Foundation. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    /**
     Perform logic based on whether `UIForceTouchCapability` is available and the API exists.
     
     A `UITraitCollection` might not have Force Touch available if the view controller's view isn't in the window yet
     (e.g. in search due to storyboard embeds).  As a result, previewing setup & tear down should happen both in
     `viewWillAppear` and `traitCollectionDidChange` to ensure previewing is always registered when the view appears
     and force touch is available.
     
     - note: Do not use this if you want to perform logic only when the API itself doesn't exist. This is solely to 
             encapsulate and facilitate Force Touch API logic in view controllers in a way that won't crash on legacy 
             operating systems.

     - parameter then:        A block which will be invoked if OS >= iOS 9 and capability is available.
     - parameter unavailable: A block which will be invoked if OS >= iOS 9 and capability is not availlable.
     */
    public func wmf_ifForceTouchAvailable(then: Void->Void, unavailable: Void->Void) {
        guard #available(iOS 9, *) else {
            return
        }
        if self.traitCollection.forceTouchCapability == UIForceTouchCapability.Available {
            then()
        } else {
            unavailable()
        }
    }
}
