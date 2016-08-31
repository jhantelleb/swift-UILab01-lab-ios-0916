//
//  ViewController.swift
//  LightBulb
//
//  Created by Michael Dippery on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightBulb: UIView!
    @IBOutlet weak var colorSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Change background color of lightBulb view to red
        lightBulb.backgroundColor = "red".color
        
    }

    
    
    
    func changeColor(to color: UIColor) {
        // TODO: Change background color to "color"
        lightBulb.backgroundColor = color
    }
    

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Change background color when segmented control changes
        switch colorSegment.selectedSegmentIndex{
        case 0: //Red
            changeColor(to: UIColor.redColor())
        case 1: //Yellow
            changeColor(to: UIColor.yellowColor())
        case 2: //Blue
            changeColor(to: UIColor.blueColor())
        case 3: //Green
            changeColor(to: UIColor.greenColor())
        default:
            changeColor(to: UIColor.blackColor())
        }
}
}