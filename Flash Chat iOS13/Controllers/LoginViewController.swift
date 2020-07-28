//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        let email = emailTextfield.text
        let password = passwordTextfield.text
        
        if let e = email , let pass = password{
            Auth.auth().signIn(withEmail: e, password: pass) { authResult, error in //closure.
                
                if let err = error{
                    print(err)
                }
                else{
                    
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
    }
}
