//
//  ViewController.swift
//  Tiptoe
//
//  Created by Christopher Sybico on 8/14/15.
//  Copyright © 2015 Christopher Sybico. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    let tipLabelTapRecognizer = UITapGestureRecognizer()
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var appBgBillView: UIImageView!
    
    @IBOutlet weak var appBgTipView: UIImageView!
    
    var tipPercentages = [0.18, 0.20, 0.22]
    var selectedTip = 0.18
    var billAmountText = ""
    
    
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
        
//        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
//        print(tipControl.selectedSegmentIndex)
//        let tipPercentage = 0.18
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * selectedTip
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
        view.endEditing(true)
        appBgBillView.alpha = 0
        appBgTipView.alpha = 1
    }
    
    // Learned from The Code Lady www.youtube.com/watch?v=MdXmIViD17U
    
    // Let pickerView know how many column?
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    // Let pickerView know how many percentages?
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipPercentages.count
    }
    
    // Let pickerView know what are the titles for each row?
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return String(format:"%.0f", tipPercentages[row]*100) + "%"
    }
    
    
    // Let pickerView know what is selected?
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){

        selectedTip = tipPercentages[row]

        tipPercentageLabel.text = String(format:"%.0f", tipPercentages[row]*100) + "%"
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * selectedTip
        let total = billAmount + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    };
    
    
    @IBAction func didTapOnShare(sender: AnyObject) {
        
        // Set up share action sheet
        let shareVC = UIActivityViewController(activityItems: [billAmountText], applicationActivities: nil)
        
        // Present or Show it
        self.presentViewController(shareVC, animated: true, completion: nil)
        
    }
    
}

