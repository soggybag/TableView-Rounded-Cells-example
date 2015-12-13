//
//  RoundTableViewCell.swift
//  TableView-Rounded-Cells-example
//
//  Created by mitchell hudson on 12/12/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//

import UIKit

class RoundTableViewCell: UITableViewCell {

    @IBOutlet weak var roundView: UIView!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var roundImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
