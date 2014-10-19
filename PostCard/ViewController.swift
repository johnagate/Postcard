//
//  ViewController.swift
//  PostCard
//
//  Created by John Robert Agate on 10/1/14.
//  Copyright (c) 2014 John Robert Agate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var messageLabel : UILabel!
    @IBOutlet weak var enterNameTextField : UITextField!
    @IBOutlet weak var enterMessageTextField : UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender : UIButton) {
        
        //adding a commit here to test commits
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        
        nameLabel.hidden = false
        nameLabel.text = "From: " + enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.text = ""
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

