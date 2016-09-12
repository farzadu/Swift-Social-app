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

class feedVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView:UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    @IBAction func signOutBtAction(_ sender: AnyObject) {
        
        let keyRemove = KeychainWrapper.defaultKeychainWrapper().removeObjectForKey(USER_ID)
        print("key \(USER_ID) removed from keychain : \(keyRemove)")
        try! FIRAuth.auth()?.signOut()
        dismiss(animated: true, completion: nil)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "postCell") as! PostCell
    }


}
