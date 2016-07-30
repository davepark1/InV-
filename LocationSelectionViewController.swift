//
//  LocationSelectionViewController.swift
//  InV
//
//  Created by David Park on 7/28/16.
//  Copyright © 2016 David Park. All rights reserved.
//

import Foundation
import UIKit

class LocationSelectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var locationDetails: Location!
    
    struct Details{
        var label: String!
        var textField: String!
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    var locationTable = [
        Details(label: "*Location Name", textField: ""),
        Details(label: "Address", textField: ""),
        Details(label: "*City", textField: ""),
        Details(label: "*State", textField: "")
    ]
    
    override func viewWillAppear(animated: Bool) {
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.registerClass(LocationTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        locationDetails = Location()
        let locationCell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: 0, inSection: 0)) as! LocationTableViewCell
        locationDetails.locationName = locationCell.textField.text
        let locationCell2 = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: 1, inSection: 0)) as! LocationTableViewCell
        locationDetails.address = locationCell2.textField.text
        let locationCell3 = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: 2, inSection:0)) as! LocationTableViewCell
        locationDetails.city = locationCell3.textField.text
        let locationCell4 = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: 3, inSection: 0)) as! LocationTableViewCell
        locationDetails.state = locationCell4.textField.text
        print("Location Name: \(locationDetails.locationName)")
        print("Location Address: \(locationDetails.city)")
        
        let createActivityViewController = segue.destinationViewController as! CreateActivityViewController
        createActivityViewController.activity.location = locationDetails
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! LocationTableViewCell
        let row = indexPath.row
        /*let previewDetail = locationTable[indexPath.row]
        print(previewDetail.label)
        print(locationTable[indexPath.row])
        print(cell.label!.text ?? "nil")
        cell.label.text! = previewDetail.label
        print("cell label modified: \(cell.label?.text)")
        cell.textField.text = previewDetail.textField*/
        
        switch row{
        case 0:
            cell.label.text = "*Location Name:"
            cell.textField.text = ""
        case 1:
            cell.label.text = "Address:"
            cell.textField.text = ""
        case 2:
            cell.label.text = "*City:"
            cell.textField.text = ""
        case 3:
            cell.label.text = "*State:"
            cell.textField.text = ""
        default:
            cell.label.text = ""
            cell.textField.text = ""
        }
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationTable.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("did select:      \(indexPath.row)  ")
    }
}
