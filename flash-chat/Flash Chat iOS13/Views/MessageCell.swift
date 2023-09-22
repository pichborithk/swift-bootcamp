//
//  MessageCell.swift
//  Flash Chat iOS13
//
//  Created by Pichborith Kong on 9/20/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
    @IBOutlet var messageBubble: UIView!
    @IBOutlet var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 3
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
