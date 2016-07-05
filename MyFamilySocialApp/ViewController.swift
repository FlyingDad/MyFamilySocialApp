//
//  ViewController.swift
//  MyFamilySocialApp
//
//  Created by Michael Kroth on 7/4/16.
//  Copyright © 2016 MGK Technology Solutions, LLC. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    @IBAction func fbLoginBtnPressed(sender: UIButton!) {

        print("FB Login Button Pressed")

        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logInWithReadPermissions(["email"], fromViewController: nil) { (facebookResult: FBSDKLoginManagerLoginResult!, facebookError: NSError!) -> Void in
            
            if facebookError != nil {
                print("Facebook login failed. Error \(facebookError)")
            } else {
                let accessToken = FBSDKAccessToken.currentAccessToken().tokenString
                print("Successfully logged in with facebook. \(accessToken)")
            }
            
        }
    }
    
//    @IBAction func emailLoginBtnPressed(sender: AnyObject) {
//    }

}
