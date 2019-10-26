//
//  ViewController.swift
//  CharanLogin
//
//  Created by MacStudent on 2019-10-26.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController:
UIViewController {

    @IBOutlet weak var TxtUsername: UITextField!
    
    @IBOutlet weak var TxtPassword: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSignupClick(_ sender: UIButton) {
        let unm = TxtUsername.text!
        let pass = TxtPassword.text!
        print("Hello, \(unm)")
        if( unm == "admin@login.com" && pass == "admin"){
            print("Signup Successful")
        }else{
            print("Username or Password is incorrect!")
        }
        
    }
    
}

