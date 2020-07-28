//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Himanshu Gupta on 11/07/2020.
//  Copyright © 2020 mine. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text , let password = passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
              
            
                if let e = error{
                    print(e)
                } else {
                    //navigate to the chatviewcontroller as registration is successful.
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
                
            }
            
        }
    }
    
}
