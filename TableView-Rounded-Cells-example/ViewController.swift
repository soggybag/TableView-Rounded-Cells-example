//
//  ViewController.swift
//  TableView-Rounded-Cells-example
//
//  Created by mitchell hudson on 12/12/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var array = [Int]()
    
    
    // MARK: Table View Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("roundCell") as! RoundTableViewCell
        
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .SpellOutStyle
        
        cell.roundLabel.text = formatter.stringFromNumber(array[indexPath.row])
        let radius = cell.roundView.frame.height / 2
        cell.roundView.layer.cornerRadius = radius
        
        let hue = 1 / CGFloat(array.count) * CGFloat(indexPath.row)
        cell.roundView.backgroundColor = UIColor(hue: hue, saturation: 1, brightness: 1, alpha: 1)
        
        return cell
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...40 {
            array.append(i)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

