//
//  HeaderTableViewCell.swift
//  ExampleTableView
//
//  Created by Antoni Wiguna on 18/07/20.
//  Copyright © 2020 aiwiguna. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

	@IBOutlet weak var titleLabel: UILabel!
	override func awakeFromNib() {
        super.awakeFromNib()
		titleLabel.dropShadow()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
