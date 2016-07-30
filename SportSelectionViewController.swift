//
//  SportSelectionViewController.swift
//  InV
//
//  Created by David Park on 7/27/16.
//  Copyright © 2016 David Park. All rights reserved.
//

import Foundation
import UIKit

class SportSelectionViewController: UITableViewController{
    
    var sport: String!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let indexPath = tableView.indexPathForSelectedRow!
        let index = indexPath.row
        print("INDEX IS \(index)")
        
        switch index{
        case 0:
            sport = "Badminton"
        case 1:
            sport = "Baseball"
        case 2:
            sport = "Basketball"
        case 3:
            sport = "Bowling"
        case 4:
            sport = "Cricket"
        case 5:
            sport = "Cycling"
        case 6:
            sport = "Dodgeball"
        case 7:
            sport = "Field Hockey"
        case 8:
            sport = "Flag Football"
        case 9:
            sport = "Football"
        case 10:
            sport = "Golf"
        case 11:
            sport = "Handball"
        case 12:
            sport = "Hockey"
        case 13:
            sport = "Lacrosse"
        case 14:
            sport = "Rugby"
        case 15:
            sport = "Running"
        case 16:
            sport = "Soccer"
        case 17:
            sport = "Softball"
        case 18:
            sport = "Tennis"
        case 19:
            sport = "Ultimate Frisbee"
        case 20:
            sport = "Volleyball"
        default:
            sport = ""
        }
        
        let createActivityViewController = segue.destinationViewController as! CreateActivityViewController
        createActivityViewController.activity.sport = sport
        print("SPORT AT SPORT SELECTION IS: \(sport)")
    }
    
}
