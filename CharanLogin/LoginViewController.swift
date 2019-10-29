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
    @IBOutlet weak var stepperLabel: UILabel!
    
    
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var switchLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSignupClick(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = sb.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
         var nm = homeVC.name
        
        
        
        
        let unm = TxtUsername.text!
        let pass = TxtPassword.text!
        print("Hello, \(unm)")
        if( unm == "admin@login.com" && pass == "admin"){
            print("Signup Successful")
        }else{
            print("Username or Password is incorrect!")
        }
        
    }
    
    
//    @IBAction func stepperValuechanged(_ sender: Any) {
//
//    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
        stepperLabel.text = "\(sender.value)"
        
    }
    
    @IBAction func slidderValuechanged(_ sender: UISlider) {
        
        sliderLabel.text = "\(sender.value)"
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        if sender.isOn{
        switchLabel.text = "\(String(describing: sender.value(forKey: "s")))"
        }

        
        
        
        
    }
    
  
}

