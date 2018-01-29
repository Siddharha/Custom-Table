//
//  CustomTableViewCell.swift
//  Custom Table
//
//  Created by Siddhartha Maji on 30/01/18.
//  Copyright © 2018 Siddhartha Maji. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var resturentImg: UIImageView!
    @IBOutlet weak var resturentName: UILabel!
    @IBOutlet weak var restiDesc: UILabel!
    @IBOutlet weak var restuRs: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
