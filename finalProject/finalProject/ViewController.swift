//
//  ViewController.swift
//  finalProject
//
//  Created by Jacqueline Moreno on 4/29/20.
//  Copyright © 2020 Jacqueline Moreno. All rights reserved.
//

import UIKit

class Global {
    var switchVar = String()
    var bonusSlider: Int = 0
    var bonusSubmit: Int = 0
    var bonusSwitch = String()
    var theSlider: Int = 0
    var pickerVar = String()
    

}

let global = Global()

class ViewController: UIViewController {

    //outlets
    @IBOutlet weak var theSwitch: UILabel!
    
    @IBOutlet weak var theSlider: UILabel!
    
    @IBOutlet weak var thePicker: UILabel!
    
    @IBOutlet weak var navView: UIView!
    
    //actions
    @IBAction func clickMenu(_ sender: Any) {
        if(navView.isHidden) {
                   navView.isHidden = false
        }
        else {
                   navView.isHidden = true
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
          navView.isHidden = true
      }
    
    override func viewWillAppear(_ animated: Bool){
       theSwitch.text = "1. Answer: \(global.switchVar)"
        theSlider.text = "2. Your bonus points: \(global.bonusSlider)"
        thePicker.text = "3. Let's find out: \(global.bonusSwitch)"
           super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

