//
//  ViewController.swift
//  ExampleTableView
//
//  Created by Antoni Wiguna on 18/07/20.
//  Copyright © 2020 aiwiguna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	let numOfData = 10
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.dataSource = self
		tableView.separatorStyle = .none
	}
	
	
}

extension ViewController: UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return 3
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		switch section {
		case 0:
			return 3
		case 1:
			return 1
		default:
			return numOfData
		}
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		switch indexPath.section {
		case 0:
			let cell = tableView.dequeueReusableCell(withIdentifier: "TopCell", for: indexPath)
			return cell
		case 1:
			let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell", for: indexPath)
			return cell
		default:
			let cell = tableView.dequeueReusableCell(withIdentifier: "CommonCell", for: indexPath) as! CommonTableViewCell
			if indexPath.row != numOfData-1 {
				cell.setBackground(isLastItem: false)
			} else {
				cell.setBackground(isLastItem: true)
			}
			return cell
		}
		
	}
}


extension UIView{
    func dropShadow(shadowColor: UIColor = UIColor.black,
                    fillColor: UIColor = UIColor.white,
                    opacity: Float = 0.2,
                    offset: CGSize = CGSize(width: 0.0, height: 1.0),
                    radius: CGFloat = 10,
					cornerRadius: CGFloat = 10) -> CAShapeLayer {

        let shadowLayer = CAShapeLayer()
        shadowLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: cornerRadius).cgPath
        shadowLayer.fillColor = fillColor.cgColor
        shadowLayer.shadowColor = shadowColor.cgColor
        shadowLayer.shadowPath = shadowLayer.path
        shadowLayer.shadowOffset = offset
        shadowLayer.shadowOpacity = opacity
        shadowLayer.shadowRadius = radius
        layer.insertSublayer(shadowLayer, at: 0)
        return shadowLayer
    }
}
