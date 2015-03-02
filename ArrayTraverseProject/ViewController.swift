//
//  ViewController.swift
//  ArrayTraverseProject
//
//  Created by Randy McLain on 2/24/15.
//  Copyright (c) 2015 Randy McLain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // constants
    let ray =  Person(firstName: "Ray", lastName: "Stantz", theStudent: false)
    let peter = Person(firstName: "Peter", lastName: "Venkman", theStudent: false)
    let egon = Person(firstName: "Egon", lastName: "Spengler", theStudent: false)
    let winston = Person(firstName: "Winston", lastName: "Zeddemore", theStudent: false)
    let louis = Person(firstName: "Louis", lastName: "Tully", theStudent: false)
    
    // properties
    var myIterator = 0

    var myGhostbusters = [Person]()

    
    // the outlet for the text field connecting it to the storyboard
    @IBOutlet weak var textOutput: UITextField!
    
    @IBOutlet weak var myLeftButton: UIButton!
    
    @IBOutlet weak var myRightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLeftButton.hidden = true

        viewWillAppear()
    }
    
    func viewWillAppear() {
        // Check the status of the iterator.
       // self.buttonAction()
        
        myGhostbusters += [ray, peter, egon, winston, louis]
    }


    func incramentIterator() -> Void {
        myIterator++
    }
    
    func decramentIterator() -> Void {
        myIterator--
    }
    
    func textBoxOutputUpdate() -> Void {
        let theInt = myIterator
         textOutput.text =  myGhostbusters[theInt].toString()
        
    }
 
    
    func buttonAction() -> Void  {
        if (myIterator == 0) {
            myLeftButton.hidden = true
            
        
        } else {
            myLeftButton.hidden = false
        }
        
        if (myIterator == 4) {
            myRightButton.hidden = true

        } else {
            myRightButton.hidden = false
        }

    }
    
    @IBAction func iteration(sender: UIButton) -> Void {
        if (myLeftButton == sender) {
            decramentIterator()
            
        } else if (myRightButton == sender) {
            incramentIterator()

    }
        buttonAction()
        textBoxOutputUpdate()
    }

    override func didReceiveMemoryWarning() -> Void {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

