//
//  ViewController.swift
//  Tiptoe
//
//  Created by Christopher Sybico on 8/14/15.
//  Copyright © 2015 Christopher Sybico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    let tipLabelTapRecognizer = UITapGestureRecognizer()
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var appBgBillView: UIImageView!
    
    @IBOutlet weak var appBgTipView: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set Tip and Total to $0.00
        tipLabel.text = "0.00"
        totalLabel.text = "0.00"
        
        // Focus on bill textfield
        billField.becomeFirstResponder()
        
        // Set the target of the tap recognizer
        tipLabelTapRecognizer.addTarget(self, action: "showTipPicker")

        // Add recognizer to tipLabel
        tipLabel.addGestureRecognizer(tipLabelTapRecognizer)
        
        // Add recognizer to tipLabel
        tipLabel.userInteractionEnabled = true
        
        appBgBillView.alpha = 1
        appBgTipView.alpha = 0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
        // Dispose of any resources that can be recreated.
    }
    
    // Hide Status Bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage
        let total = billAmount + tip
        
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
    
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func tapOnBillField(sender: AnyObject) {
        appBgBillView.alpha = 1
        appBgTipView.alpha = 0
    }
    
    func showTipPicker(){
        print("picker")
        view.endEditing(true)
        appBgBillView.alpha = 0
        appBgTipView.alpha = 1
    }
    
}

