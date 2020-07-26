//
//  ViewController.swift
//  calculator
//
//  Created by mukul on 01/01/20.
//  Copyright © 2020 mukul. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var khamokha:Int = 0;
    var numberOnScrenn:Double = 0;
    var previousnumber:Double = 0;
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var lable: UILabel!
    
 
    @IBAction func number(_ sender: UIButton)
    {
        if performingMath==true
            
        {
            lable.text = String(sender.tag-1)
            numberOnScrenn = Double(lable.text!)!
            performingMath = true
            
        }
        else
        {
         lable.text = lable.text! + String(sender.tag-1)
       numberOnScrenn = Double(lable.text!)!
        }
    }
    
    @IBAction func button(_ sender: UIButton)
    {
        if lable.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousnumber = Double(lable.text ?? "0") ?? 0
            if sender.tag == 12 //divide
            {
             lable.text = "/";
            }
            else if sender.tag == 13//multiply
            {
                lable.text = "x";
            }
            else if sender.tag == 14 // add
            {
                lable.text = "+";
            }
            else if sender.tag == 15// sub
            {
                lable.text = "-";
            }
            operation = sender.tag
            performingMath = true
            
        }
         else if sender.tag == 16
        {
            numberOnScrenn = Double(lable.text ?? "0") ?? 0
            if operation == 12
            {
                lable.text = String(previousnumber / numberOnScrenn)
            }
            else if operation == 13
            {
                lable.text = String(previousnumber * numberOnScrenn)

            }
            else if operation == 14
            {
                lable.text = String(previousnumber + numberOnScrenn)

            }
            else if operation == 15
            {
               lable.text = String(previousnumber - numberOnScrenn)
            }
            
        }
         else if sender.tag == 11
        {
            lable.text = ""
            previousnumber = 0;
            numberOnScrenn = 0;
            operation = 0;
        }
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

