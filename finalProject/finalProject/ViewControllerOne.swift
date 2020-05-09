//
//  ViewControllerOne.swift
//  finalProject
//
//  Created by Jacqueline Moreno on 4/30/20.
//  Copyright © 2020 Jacqueline Moreno. All rights reserved.
//

import UIKit

    //variables
    var Purgatory:Int = 0
    var txst:Int = 0
    var lights:Int = 0
    var total:Int = 0


class ViewControllerOne:
    UIViewController {
    
    
    //outlets
    @IBOutlet weak var switchVal: UILabel!
    
    @IBOutlet weak var myTotal: UILabel!
    
    //actions
    @IBAction func theSwitch(_ sender: UISwitch) {
        if sender.isOn {
                  global.switchVar = "Try again!"
                    switchVal.text = global.switchVar
               }
               else {
                  global.switchVar = "Got it!"
                    switchVal.text =    global.switchVar
                   }
    }
    
    
    @IBAction func switchOne(_ sender: UISwitch) {
                if sender.isOn {
                      Purgatory = 2
                  }
                 else {
                      Purgatory = 0
        }
    }
    
    
    @IBAction func switchTwo(_ sender: UISwitch) {
            if sender.isOn {
                    txst = 2
                         }
            else {
                    txst = 0
               }
    }
    
    
    @IBAction func switchThree(_ sender: UISwitch) {
        if sender.isOn {
                lights = 2
                     }
        else {
                lights = 0
           }
        
    }
    
    
    @IBAction func submit(_ sender: Any) {
        total = Purgatory + txst + lights
    if(total <= 2) {
    myTotal.text = "1 correct; Try again :)"
            }
    else if(total > 3 && total < 5){
    myTotal.text = "2 correct; Almost!"
                }
    else    {
    myTotal.text = "You know the hot spots :)"
            }
}
    
    override func viewDidLoad() {
          global.switchVar = "Answer:"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
