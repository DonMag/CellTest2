//
//  TableViewController.swift
//  TestMultilineLabelInTableCells
//
//  Created by JB on 08/07/2017.
//  Copyright © 2017 JB. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
	
	var rightText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse at lacus quis leo eleifend viverra in a est. Curabitur elit urna, lobortis et justo ut, aliquam imperdiet sapien. Maecenas gravida ante vitae hendrerit congue. Phasellus id erat ligula. Duis malesuada condimentum mattis. Donec tellus diam, rutrum sit amet nisl ultricies, accumsan commodo risus. Vestibulum elit ante, mollis nec enim at, imperdiet dictum erat. Proin laoreet dolor id est egestas, ultricies tincidunt elit pretium. Phasellus posuere, metus in laoreet mattis, velit odio mollis risus, nec pharetra tellus odio in dolor. Maecenas tincidunt END OF TEXT"
	
	var leftText1 = "Test aa"
	var leftText2 = "Test bb"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Get dynamic cell heights working
		tableView.rowHeight = UITableViewAutomaticDimension
		tableView.estimatedRowHeight = 30.0
		
		leftText1 += " Longer"
		leftText2 += " Longer"

//		rightText = "One line on right"
		
//		leftText1 += " Now it's Too much Longer"
		
	}
	
	// MARK: - Table view data source
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 6
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
	{
		// Configure the cell...
		
		switch (indexPath.row % 3) + 3 {
		case 1:
			// let case 1 fall through to default
			break
			
		case 2:
			let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath) as! TableViewCell2
			cell.leftLabel1.text = leftText1
			cell.leftLabel2.text = leftText2
			cell.rightLabel.text = rightText
			return cell
			
		case 3:
			let cell = tableView.dequeueReusableCell(withIdentifier: "Cell3", for: indexPath) as! TableViewCell3
			cell.leftLabel1.text = leftText1
			cell.leftLabel2.text = leftText2
			cell.rightLabel.text = rightText
			return cell
			
		default:
			break
		}

		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! TableViewCell1
		cell.leftLabel1.text = leftText1
		cell.leftLabel2.text = leftText2
		cell.rightLabel.text = rightText
		return cell

	}
 
}
