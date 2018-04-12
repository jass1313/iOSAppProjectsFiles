//
//  CustomCell.swift
//  customTableViewCell
//
//  Created by Jasbeer Singh on 30/03/18.
//  Copyright © 2018 Jasbeer Singh. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
