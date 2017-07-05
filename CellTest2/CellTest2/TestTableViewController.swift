//
//  TestTableViewController.swift
//  CellTest2
//
//  Created by DonMag on 7/4/17.
//  Copyright © 2017 DonMag. All rights reserved.
//

import UIKit

class TestBCell: UITableViewCell {
	
	@IBOutlet weak var leftLabel1: UILabel!
	
	@IBOutlet weak var leftLabel2: UILabel!
	
	@IBOutlet weak var rightLabel: UILabel!
}

class TestTableViewController: UITableViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.rowHeight = UITableViewAutomaticDimension
		tableView.estimatedRowHeight = 80
	}
	
	// MARK: - Table view data source
	
	override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 60
	}
	
	override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let v = UILabel(frame: CGRect.zero)
		v.numberOfLines = 0
		v.text = "Section \(section)\nA really really long string"
		v.backgroundColor = UIColor.lightGray
		return v
	}
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 8
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		// cell with "testB" identifier (red background) has NO width limit on Left Labels
		// cell with "testC" identifier (blue background) has Left Labels width constrained to <= 200 (just arbirary number for demonstration)
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "testB", for: indexPath) as! TestBCell
//		let cell = tableView.dequeueReusableCell(withIdentifier: "testC", for: indexPath) as! TestBCell
		
		switch indexPath.section {
		case 0:
			cell.leftLabel1?.text = "Label1 aabbccdd"
			cell.leftLabel2?.text = "Label2 aabbccdd"
			cell.rightLabel?.text = "Cell \(indexPath.row) with a 'really really' long string that needs displaying clearly and causing the table cell to resize to fit the content. We're looking for about 3 or 4 lines of text to be displayed"
			break
			
		case 3:
			cell.leftLabel1?.text = "Shorter"
			cell.leftLabel2?.text = "Label2 aabbccdd"
			cell.rightLabel?.text = "Cell \(indexPath.row) with a 'really really' long string that needs displaying clearly and causing the table cell to resize to fit the content. We're looking for about 3 or 4 lines of text to be displayed"
			break
			
		case 1:
			cell.leftLabel1?.text = "Label1 aabbccdd"
			cell.leftLabel2?.text = "Label2 aabbccdd"
			cell.rightLabel?.text = "Cell \(indexPath.row) with a 'really really really' long string that needs displaying clearly and causing the table cell to resize to fit the content. We're looking for about 3 or 4 lines of text to be displayed"
			break
			
		case 4:
			cell.leftLabel1?.text = "Label1 aabbccdd"
			cell.leftLabel2?.text = "Shorter"
			cell.rightLabel?.text = "Cell \(indexPath.row) with a 'really really really' long string that needs displaying clearly and causing the table cell to resize to fit the content. We're looking for about 3 or 4 lines of text to be displayed"
			break
			
		case 2:
			cell.leftLabel1?.text = "Label1 aabbccdd"
			cell.leftLabel2?.text = "Label2 aabbccdd"
			cell.rightLabel?.text = "Cell \(indexPath.row) with a 'really really really really really really really really' long string that needs displaying clearly and causing the table cell to resize to fit the content. We're looking for about 3 or 4 lines of text to be displayed"
			break
			
		case 5:
			cell.leftLabel1?.text = "Label1 aabbccdd"
			cell.leftLabel2?.text = "Label2 aabbccdd"
			cell.rightLabel?.text = "Only 1 line on right"
			break
			
		case 6:
			cell.leftLabel1?.text = "Short"
			cell.leftLabel2?.text = "Shorter"
			cell.rightLabel?.text = "Cell \(indexPath.row) with a 'really really' long string that needs displaying clearly and causing the table cell to resize to fit the content. We're looking for about 3 or 4 lines of text to be displayed"
			break
			
		case 7:
			cell.leftLabel1?.text = "The text for this Label takes up too much room!"
			cell.leftLabel2?.text = "Label2 aabbccdd"
			cell.rightLabel?.text = "That might be a problem, unless you have length limits on the left."
			break
			
		default:
			cell.leftLabel1?.text = "Left 1"
			cell.leftLabel2?.text = "Left 2"
			cell.rightLabel?.text = "Right"
			break
			
		}
		
		return cell
	}
	
}
