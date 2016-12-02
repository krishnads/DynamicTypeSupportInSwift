//
//  DynamicTypeCell.swift
//  Alamofire4Demo
//
//  Created by Krishana on 10/24/16.
//  Copyright © 2016 Konstant Info Solutions Pvt. Ltd. All rights reserved.
//

import UIKit

class DynamicTypeCell: UITableViewCell {

    @IBOutlet weak var dynamicLabel: UILabel?
    @IBOutlet weak var dynamicsubLabel: UILabel?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
