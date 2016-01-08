//
//  ViewController.swift
//  tipCalculator
//
//  Created by shillestad on 10/7/15.
//  Copyright (c) 2015 shillestad. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var buttonTen: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button25: UIButton!

    @IBOutlet weak var subtotalField: UITextField!
    
    @IBOutlet weak var splitPeople: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var numberOfPeople: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func buttonTenTapped(sender: AnyObject)
    {
        let subtotal = NSString(string: subtotalField.text!).doubleValue
        let myBill = calculateTip(subtotal, tipPercent: 0.10)
        resetButtons()
        buttonTen.setImage(UIImage(named: "10_selected_image"), forState: UIControlState.Normal)
        
        tipLabel.text = "$" + String(format: "%.2f", myBill.0)
        total.text = "$" + String(format: "%.2f", myBill.1)
        splitPeople.text = "$" + String(format: "%.2f", myBill.1 / (Double)(people))
       
    }

    @IBAction func button15Tapped(sender: AnyObject)
    {
        let subtotal = NSString(string: subtotalField.text!).doubleValue
       let myBill = calculateTip(subtotal, tipPercent: 0.15)
        resetButtons()
        button15.setImage(UIImage(named: "15_selected_image"), forState: UIControlState.Normal)
        
        tipLabel.text = "$" + String(format: "%.2f", myBill.0)
        total.text = "$" + String(format: "%.2f", myBill.1)
        splitPeople.text = "$" + String(format: "%.2f", myBill.1 / (Double)(people))

    }

    @IBAction func button20Tapped(sender: AnyObject)
    {
        let subtotal = NSString(string: subtotalField.text!).doubleValue
        let myBill = calculateTip(subtotal, tipPercent: 0.20)
        resetButtons()
        button20.setImage(UIImage(named: "20_selected_image"), forState: UIControlState.Normal)
        
        tipLabel.text = "$" + String(format: "%.2f", myBill.0)
        total.text = "$" + String(format: "%.2f", myBill.1)
        splitPeople.text = "$" + String(format: "%.2f", myBill.1 / (Double)(people))
    }
    
    @IBAction func button25Tapped(sender: AnyObject)
    {
        let subtotal = NSString(string: subtotalField.text!).doubleValue
        let myBill = calculateTip(subtotal, tipPercent: 0.25)
        resetButtons()
        button25.setImage(UIImage(named: "25_selected_image"), forState: UIControlState.Normal)
        
        tipLabel.text = "$" + String(format: "%.2f", myBill.0)
        total.text = "$" + String(format: "%.2f", myBill.1)
        splitPeople.text = "$" + String(format: "%.2f", myBill.1 / (Double)(people))
    }
    
    func resetButtons()
    {
        buttonTen.setImage(UIImage(named: "10_unselected_image"), forState: UIControlState.Normal)
       
        button15.setImage(UIImage(named: "15_unselected_image"), forState: UIControlState.Normal)
        
        button20.setImage(UIImage(named: "20_unselected_image"), forState: UIControlState.Normal)
        
        button25.setImage(UIImage(named: "25_unselected_image"), forState: UIControlState.Normal)
    }
    var people = 1
    
    
    
    @IBAction func upArrow(sender: AnyObject)
    {
        people++
        numberOfPeople.text = people.description
    }

    
    @IBAction func downArrow(sender: AnyObject)
    {
        if people > 1
        {
        people--
        numberOfPeople.text = people.description
        }
    }
    
    
    func calculateTip(subtotal: Double, tipPercent: Double) -> (Double,Double)
    {
        let tipAmount = subtotal * tipPercent
        let totalAmount = subtotal * (1 + tipPercent)
        
        return (tipAmount,totalAmount)
    }
}






