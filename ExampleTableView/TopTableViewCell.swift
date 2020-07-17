//
//  TopTableViewCell.swift
//  ExampleTableView
//
//  Created by Antoni Wiguna on 18/07/20.
//  Copyright © 2020 aiwiguna. All rights reserved.
//

import UIKit

class TopTableViewCell: UITableViewCell {
	
	@IBOutlet weak var background: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
		background.dropShadow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
