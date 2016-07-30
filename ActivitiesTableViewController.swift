//
//  FirstViewController.swift
//  InV
//
//  Created by David Park on 7/22/16.
//  Copyright © 2016 David Park. All rights reserved.
//

import UIKit
import Foundation


class ActivitiesTableViewController: UITableViewController{
    var activities = [Event](){
        didSet{
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // do stuff here
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! ActivityTableViewCell
        
        let row = indexPath.row
        let event = activities[row]
        cell.usernameLabel.text = event.username
        cell.sportChoiceLabel.text = event.sport
        //cell.locationNameLabel.text = event.location.locationName
        cell.locationNameLabel.text = event.location.locationName
        cell.numPplAttendingLabel.text = "#: \(event.numPplAttending.description)"
        cell.dateLabel.text = event.date
        cell.timeLabel?.text = event.time
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let identifier = segue.identifier
        if identifier == "displayDetails"{
            print("table cell tapped")
            let indexPath = tableView.indexPathForSelectedRow!
            let event = activities[indexPath.row]
            let activityDetailsTableViewController = segue.destinationViewController as! ActivityDetailsTableViewController
            activityDetailsTableViewController.activity = event
        }
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue){
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

