//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var swRememberMe: UISwitch!
    
    @IBAction func btnLogin(_ sender: UIButton) {
        
        let email = txtEmail.text
        let pwd = txtPassword.text
        
       if(email == "admin" && pwd == "admin@123")
        {
            print("Login Success..")
            /*let userDefault = UserDefaults.standard
            if (swRememberMe.isOn)
            {
                let UserDefault = UserDefaults.standard
                UserDefault.set(email, forKey: "userEmail")
                UserDefault.set(pwd, forKey: "userPassword")
 
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let entryVC = sb.instantiateViewController(withIdentifier: "entryVC") as! StudentEntryViewController
            //entryVC.Email = email
            self.navigationController?.pushViewController(entryVC, animated: true)
            //self.present(homeVC, animated: true)
        }*/
        
       }
 
        else{
            
            self.showAlert()
            
            
        }
        
        
    }
    
    
    
    func showAlert()
    {
        let alert = UIAlertController(title: "Alert", message: "<Invalid Email and Password>", preferredStyle: .alert)
        
        let actionDefault = UIAlertAction(title: "OK", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {(action:UIAlertAction) in
            print("Cancel Click")
        })
        
        alert.addAction(actionDefault)
        alert.addAction(actionCancel)
        
        self.present(alert, animated: true)
    }
 
 
}


        

    



    


