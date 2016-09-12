//
//  feedVC.swift
//  socialApp
//
//  Created by Farzad Taslimi on 9/12/16.
//  Copyright © 2016 Farzad Taslimi. All rights reserved.
//

import UIKit
import SwiftKeychainWrapper
import Firebase

class feedVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signOutBtAction(_ sender: AnyObject) {
        
        let keyRemove = KeychainWrapper.defaultKeychainWrapper().removeObjectForKey(USER_ID)
        print("key \(USER_ID) removed from keychain : \(keyRemove)")
        try! FIRAuth.auth()?.signOut()
        dismiss(animated: true, completion: nil)
        
    }


}
