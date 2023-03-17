//
//  ViewController.swift
//  shoppingproject
//
//  Created by monil sojitra on 25/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var stepperlb: UILabel!
    
    @IBOutlet weak var pricelb: UILabel!
    
    @IBOutlet weak var quantityLabel: UILabel!
    
    @IBOutlet weak var descTextview: UITextView!
    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperlb.layer.borderWidth = 2
        stepperlb.layer.cornerRadius = 5
        stepperlb.layer.borderColor = UIColor.gray.cgColor
        stepperlb.layer.masksToBounds = true
        stepper.value = 1
        stepper.maximumValue = 10
        stepper.minimumValue = 0
        stepperlb.text = Int(stepper.value).description
     
    }
    

    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segment.selectedSegmentIndex == 0{
            img.image = UIImage(named: "white")
        }
        else if segment.selectedSegmentIndex == 1{
            img.image = UIImage(named: "black")
        }
        else if segment.selectedSegmentIndex == 2{
            img.image = UIImage(named: "red")
        }else if segment.selectedSegmentIndex == 3{
            img.image = UIImage(named: "blue")
        }
        
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        stepperlb.text = Int(stepper.value).description
        pricelb.text = ("\(399 * Int(Int(stepper.value).description)!)")    }
    
}

