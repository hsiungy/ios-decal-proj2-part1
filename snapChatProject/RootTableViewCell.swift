//
//  RootTableViewCell.swift
//  snapChatProject
//
//  Created by YHsiung on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class RootTableViewCell: UITableViewCell {
    var iconUnread: Int = 1

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var sender: UILabel!
    @IBOutlet weak var isRead: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
}
