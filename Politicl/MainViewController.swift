//
//  MainViewController.swift
//  LGSideMenuControllerDemo
//
//  Created by Cole Dunsby on 2016-07-24.
//  Copyright © 2016 Cole Dunsby. All rights reserved.
//

import UIKit

class MainViewController: LGSideMenuController {
    
    private lazy var leftViewController: LeftViewController = {
        return self.storyboard?.instantiateViewControllerWithIdentifier("LeftViewController") as! LeftViewController
    }()
    
    
    private var type: Int?
    
    func setup(presentationStyle style: LGSideMenuPresentationStyle, type: Int) {
        self.type = type
        
        if type == 0 {
            setLeftViewEnabledWithWidth(250, presentationStyle: style, alwaysVisibleOptions: .OnNone)
            
            leftViewStatusBarStyle = .Default
            leftViewStatusBarVisibleOptions = .OnNone
            leftViewController.tableView.backgroundColor = .clearColor()
            
        }
        // -----
        
        leftViewController.tableView.reloadData()
        leftView().addSubview(leftViewController.tableView)
    }
    
    override func leftViewWillLayoutSubviewsWithSize(size: CGSize) {
        super.leftViewWillLayoutSubviewsWithSize(size)
        
        if UIApplication.sharedApplication().statusBarHidden && (type == 2 || type == 3) {
            leftViewController.tableView.frame = CGRect(x: 0, y: 20, width: size.width, height: size.height - 20)
        } else {
            leftViewController.tableView.frame = CGRect(origin: CGPoint.zero, size: size)
        }
    }

    
}
