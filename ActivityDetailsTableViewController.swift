//
//  ActivityDetailsTableViewController.swift
//  InV
//
//  Created by David Park on 7/26/16.
//  Copyright © 2016 David Park. All rights reserved.
//

import Foundation
import UIKit

class ActivityDetailsTableViewController: UITableViewController{
    var activity: Event!
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var skillLevelChoiceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var numPplAttendingLabel: UILabel!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var locationAddressLabel: UILabel? //change optional!!
    @IBOutlet weak var detailsLabel: UITextView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let activity = activity{
            usernameLabel.text = activity.username
            skillLevelChoiceLabel.text = activity.skillLevel
            dateLabel.text = activity.date
            timeLabel.text = activity.time ?? ""
            numPplAttendingLabel.text = activity.numPplAttending.description
            locationNameLabel.text = activity.location
            detailsLabel.text = activity.description ?? ""
        }
    }
}