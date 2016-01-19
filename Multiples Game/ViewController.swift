//
//  ViewController.swift
//  Multiples Game
//
//  Created by Marc Aupont on 1/18/16.
//  Copyright © 2016 Digimark Technical Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var maxAmount = 50
    
    var userNumber = 0
    
    var number2 = 0

    @IBOutlet var logoImage: UIImageView!
    
    @IBOutlet var outputLabel: UILabel!
    
    @IBOutlet var userInput: UITextField!
    
    @IBOutlet var playButtonImage: UIButton!
    
    @IBOutlet var addButtonImage: UIButton!
    
    @IBAction func playBtnPressed(sender: AnyObject) {
        
        if userInput.text != nil && userInput.text != "" {
            
            userNumber = Int(userInput.text!)!
            
            logoImage.hidden = true
            userInput.hidden = true
            playButtonImage.hidden = true
            
            outputLabel.hidden = false
            addButtonImage.hidden = false
        }
        
    }
    
    @IBAction func addBtnPressed(sender: AnyObject) {
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

