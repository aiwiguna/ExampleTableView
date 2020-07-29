//
//  QuestionCell.swift
//  ExampleTableView
//
//  Created by Antoni Wiguna on 29/07/20.
//  Copyright © 2020 aiwiguna. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {

	@IBOutlet weak var questionLabel: UILabel!
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
