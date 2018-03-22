//
//  LoginVC.swift
//  FirebaseD
//
//  Created by callsoft on 24/11/17.
//  Copyright © 2017 callsoft. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {

  
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLoginAction(_ sender: Any)
    {
        firebaseLogin()
    }
    
    @IBAction func btnSignupAction(_ sender: Any)
    {
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "SignupVC") as! SignupVC
        self.navigationController?.pushViewController(obj, animated: true)
    }
    

    func firebaseLogin()
    {
        Auth.auth().signIn(withEmail: txtEmail.text!, password: txtPassword.text!) { (user, error) in
            
            if let err = error
            {
                print(err.localizedDescription)
                return
            }
            
            print(user?.email)
            print(user?.displayName)
            
            
        }
    }

}
