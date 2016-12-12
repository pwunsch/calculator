    //
//  ViewController.swift
//  calculator
//
//  Created by Petri Wunsch on 08/11/2016.
//  Copyright © 2016 Petri Wunsch . All rights reserved.
//

import UIKit

enum modes {
    case NOT_SET
    case ADDITION
    case SUBSTRACTION
}

class ViewController: UIViewController {
    var currentMode:modes = modes.NOT_SET
    var labelString:String = "0"
    var SavedNum:Int = 0
    var lastButtonMode:Bool = false
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func tappedPlus(sender: AnyObject) {
    }
   
    func tappedNumber(num:Int)-> String{
          labelString = labelString.stringByAppendingString("\(num)")
        updateText()
        return labelString
    }
   
    @IBAction func tapped0(sender: AnyObject) {
     UIApplication.sharedApplication().openURL(NSURL(string:"prefs:root=Safari")!)}
    @IBAction func tapped1(sender: AnyObject) {tappedNumber(1)}
    @IBAction func tapped2(sender: AnyObject) {tappedNumber(2)}
    @IBAction func tapped3(sender: AnyObject) {tappedNumber(3)}
    @IBAction func tapped4(sender: AnyObject) {tappedNumber(4)}
    @IBAction func tapped5(sender: AnyObject) {tappedNumber(5)}
    @IBAction func tapped6(sender: AnyObject) {tappedNumber(6)}
    @IBAction func tapped7(sender: AnyObject) {tappedNumber(7)}
    @IBAction func tapped8(sender: AnyObject) {tappedNumber(8)}
    @IBAction func tapped9(sender: AnyObject) {tappedNumber(9)}
    
    @IBAction func tappedC(sender: AnyObject) {
        labelString = "0"
        updateText()
    }
    func updateText(){
        label.text = labelString
      
        
    }
    
    func newMode(newMode:modes){
   
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

