//
//  ViewController.swift
//  ExampleTableView
//
//  Created by Antoni Wiguna on 18/07/20.
//  Copyright © 2020 aiwiguna. All rights reserved.
//

import UIKit

struct Answer {
	let answerText: String
}

struct Question {
	let questionText: String
	let answers: [Answer]
}

class ViewController: UIViewController {
	
	@IBOutlet weak var tableView: UITableView!
	var questions: [Question] = []
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		for i in 1...10 {
			let question = Question(questionText: "Question \(i)", answers: [
				Answer(answerText: "Answer 1 Question \(i)"),
				Answer(answerText: "Answer 2 Question \(i)"),
				Answer(answerText: "Answer 3 Question \(i)"),
				Answer(answerText: "Answer 4 Question \(i)")
			])
			questions.append(question)
		}
		tableView.dataSource = self
		tableView.delegate = self
		tableView.sectionHeaderHeight = UITableView.automaticDimension;
		tableView.estimatedSectionHeaderHeight = 44
	}
	
	
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
	func numberOfSections(in tableView: UITableView) -> Int {
		return questions.count
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return questions[section].answers.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell", for: indexPath) as! AnswerCell
		
		cell.answerLabel.text = questions[indexPath.section].answers[indexPath.row].answerText
		return cell
	}
	
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell") as! QuestionCell
		
		cell.questionLabel.text = questions[section].questionText
		return cell
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
