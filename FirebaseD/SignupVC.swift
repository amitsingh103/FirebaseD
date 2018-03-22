//
//  SignupVC.swift
//  FirebaseD
//
//  Created by callsoft on 24/11/17.
//  Copyright © 2017 callsoft. All rights reserved.
//

import UIKit
import Firebase

class SignupVC: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
 
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnSignupAction(_ sender: Any)
    {
        firebaseSignup()
    }

    func firebaseSignup()
    {
        Auth.auth().createUser(withEmail: txtEmail.text!, password: txtPassword.text!) { (user, error) in
            
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
