//
//  ViewController.swift
//  Touch ID Demo
//
//  Created by George Gogarten on 6/28/16.
//  Copyright © 2016 George Gogarten. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let authenticationContext = LAContext();
        var error: NSError?
        
        
        if authenticationContext.canEvaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            authenticationContext.evaluatePolicy(.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "Please verify your user information with Touch ID") { (success, error) in
                
                if success {
                    
                    // User has been authenticated with TouchID
                    
                } else {
                    
                    if let error = error {
                        
                        // There was an error with the TouchID verification
                        
                    } else {
                        
                        // User did not authenticate
                        
                    }
                    
                }
            }
            
        } else {
            
            // No TouchID available
            
        }
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

