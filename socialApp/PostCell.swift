//
//  PostCell.swift
//  socialApp
//
//  Created by Farzad Taslimi on 9/12/16.
//  Copyright © 2016 Farzad Taslimi. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var postTxt: UITextView!
    @IBOutlet weak var postLike: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   

}
