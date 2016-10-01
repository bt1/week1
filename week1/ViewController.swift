//
//  ViewController.swift
//  week1
//
//  Created by local-admin on 10/1/16.
//  Copyright © 2016 The Austin Space. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    var nameArray: NSArray = ["benny", "evelina", "aylon", "jason", "suzy", "alvin"]
    var counter: NSInteger = 0
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        self.nameLabel.textColor = UIColor.blueColor()
        
        
        // counter: tells us which index we're currently at, starts at 0
        // increment 1 to the counter every time button pressed
        // update label w/ new name
        
        
        
        //fix: add a if statement to check if index is > 5, if so we're 0
        print(self.counter)
        if (self.counter >= 5){
            self.counter = 0;
        }
        else{
            self.counter += 1
        }
        print(self.nameArray[counter])
        self.nameLabel.text = self.nameArray[counter] as! String
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUppercaseName("Give me my name!")
        showNames(nameArray)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUppercaseName(statement: String){
        print(statement)
        //Change string to uppercase
        self.nameLabel.text = self.nameArray[0] as! String
        self.nameLabel.text = self.nameLabel.text?.uppercaseString
        
    }
    
    
    
    
    func showNames(nameArray: NSArray){
        // Pass in the name array and loop through each of them to display on UI
        
        for (var i = 0; i < nameArray.count; i++){
            //code
            
            if (nameArray[i].isEqual("benny")){
                print("that's me!")
            }
            else{
                print ("that's \(nameArray[i])")
            }
            
            //print(nameArray[i])
        }
    }
    
    
    
    
    
    
}

