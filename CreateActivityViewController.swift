//
//  SecondViewController.swift
//  InV
//
//  Created by David Park on 7/22/16.
//  Copyright © 2016 David Park. All rights reserved.
//

import UIKit
import Foundation

class CreateActivityViewController: UITableViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var activity = Event(){
        didSet{
            tableView.reloadData()
            print("UPDATE")
        }
    }
    var time: String!
    
    @IBOutlet weak var sportSelectionTableView: UITableView!
    @IBOutlet weak var myPicker: UIPickerView!
    let pickerData = [["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"], ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"], ["AM", "PM"]]
    

    @IBOutlet weak var sportChoiceLabel: UILabel!
    @IBOutlet weak var locationChoiceLabel: UILabel!

    @IBOutlet weak var dateChoiceTextField: UITextField!
    @IBOutlet weak var skillLevelChoiceTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    enum InvalidEntry: ErrorType{
        case nullSport
        case nullLocation
        case nullTime
        case nullDate
        case nullSkillLevel
    }

    
    @IBAction func doneButtonPressed(sender: AnyObject) {
        print("Done button tapped")
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if let identifier = segue.identifier {
            if identifier == "Cancel" {
                print("Cancel button tapped")
            } else if identifier == "Done" {
                //activity = Event()
                print("done button tapped")
                print("sport: \(activity.sport)")
                print("location: \(activity.location.locationName)")
                print("date: \(dateChoiceTextField.text)")
                print("skill level: \(skillLevelChoiceTextField.text)")
                print("description: \(descriptionTextView.text)")
                
                /*guard sportChoiceTextField != nil else{
                    print("Activity field required")
                    return
                    //throw(exception: InvalidEntry.nullSport)
                }
                guard locationChoiceTextField != nil else{
                    print("location field required")
                    return
                    //throw(exception: InvalidEntry.nullLocation)
                }
                guard dateChoiceTextField != nil else{
                    print("date field required")
                    return
                    //throw(exception: InvalidEntry.nullDate)
                }
                guard skillLevelChoiceTextField != nil else{
                    print("skill level field required")
                    return
                    //throw(exception: InvalidEntry.nullSkillLevel)
                }*/
                
                activity.username = "DavidPark"
                activity.time = time
                activity.date = dateChoiceTextField.text
                activity.skillLevel = skillLevelChoiceTextField.text
                activity.description = descriptionTextView.text

                let activitiesTableViewController = segue.destinationViewController as! ActivitiesTableViewController
                
                activitiesTableViewController.activities.append(activity)
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        descriptionTextView.text = ""
        sportChoiceLabel.text = activity.sport ?? ""
        locationChoiceLabel.text = activity.location.locationName ?? ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPicker.dataSource = self;
        myPicker.delegate = self;
        updateTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return pickerData.count
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData[component].count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[component][row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        updateTime()
    }
    
    func updateTime(){
        let hour = pickerData[0][myPicker.selectedRowInComponent(0)]
        let minute = pickerData[1][myPicker.selectedRowInComponent(1)]
        let timeOfDay = pickerData[2][myPicker.selectedRowInComponent(2)]
        time = "\(hour):\(minute) \(timeOfDay)"
    }
    
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 50
    }
    
    @IBAction func unwindToCreateActivitySegue(segue: UIStoryboardSegue){
    }
}

