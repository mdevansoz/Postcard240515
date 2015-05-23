//
//  ViewController.swift
//  Postcard
//
//  Created by Michael Evans on 23/05/2015.
//  Copyright (c) 2015 Michael Evans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var entermessageTextField: UITextField!
   
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendEmailButtonPressed(sender: UIButton) {
        //Actions on button press
        messageLabel.hidden = false
        messageLabel.text = entermessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        entermessageTextField.text = ""
        entermessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

