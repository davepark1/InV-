//
//  EventsTableViewCell.swift
//  InV
//
//  Created by David Park on 7/20/16.
//  Copyright © 2016 Thorn Technologies. All rights reserved.
//

import UIKit
import Foundation

class ActivityTableViewCell: UITableViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var sportChoiceLabel: UILabel!
    @IBOutlet weak var numPplAttendingLabel: UILabel!
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel? // change optional
    @IBOutlet weak var skillLevelLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
