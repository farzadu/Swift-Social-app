//
//  ViewController.swift
//  socialApp
//
//  Created by Farzad Taslimi on 9/11/16.
//  Copyright © 2016 Farzad Taslimi. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase

class SigninVC: UIViewController {

    @IBOutlet weak var emailTxtField: TextFieldOptimize!
    @IBOutlet weak var passTxtField: TextFieldOptimize!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func facebookBtnAction(_ sender: AnyObject) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("Farzad: facebook Login had nil : \(error)")
            }else if result?.isCancelled == true {
                print("Farzad: the user canceled : \(result)")
            } else {
                print("successfully signed in with facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
                
            }
        }
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("Frazad: unable to authenticate with Firebase : \(error)")
            } else {
                print("Farzad: Successfully authenticated with Firebase")
            }
        })
     
    }

    @IBAction func signInBtnAction(_ sender: AnyObject) {
        if let email = emailTxtField.text{
          if  let password = passTxtField.text{
            FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
                if error == nil {
                    print("succsessfully signed in with email")
                } else {
                    FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
                        if error != nil {
                            print("unable to authenticate with email")
                        }else {
                            print("create a user")
                        }
                    })
                }
            })
            
        }
        
    }
    }
}

