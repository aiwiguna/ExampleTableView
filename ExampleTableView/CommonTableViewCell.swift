//
//  CommonTableViewCell.swift
//  ExampleTableView
//
//  Created by Antoni Wiguna on 18/07/20.
//  Copyright © 2020 aiwiguna. All rights reserved.
//

import UIKit

class CommonTableViewCell: UITableViewCell {

	@IBOutlet weak var bottomConstraint: NSLayoutConstraint!
	@IBOutlet weak var background: UIView!
	
	var shadowLayer: CAShapeLayer?
	
	override func awakeFromNib() {
        super.awakeFromNib()
    }
	
	func setBackground(isLastItem: Bool) {
		shadowLayer?.removeFromSuperlayer()
		if isLastItem {
			bottomConstraint.constant = 8
			shadowLayer = background.dropShadow()
		} else {
			bottomConstraint.constant = -8
			shadowLayer = background.dropShadow(cornerRadius: 0)
		}
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
