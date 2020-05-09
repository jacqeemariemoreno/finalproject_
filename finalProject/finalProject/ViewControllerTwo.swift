//
//  ViewControllerTwo.swift
//  finalProject
//
//  Created by Jacqueline Moreno on 4/30/20.
//  Copyright © 2020 Jacqueline Moreno. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController {

    //outlets
    @IBOutlet weak var bonusSubmit: UILabel!
    @IBOutlet weak var valOne: UILabel!
    @IBOutlet weak var valTwo: UILabel!
    @IBOutlet weak var valThree: UILabel!
    
    
    
    //actions
    @IBAction func bonusSlider(_ sender: UISlider) {
        global.bonusSlider = Int(sender.value)
            bonusSubmit.text = "\(global.bonusSlider)"
    }
    
    @IBAction func sliderOne(_ sender: UISlider) {
        valOne.text = String(Int(sender.value))
    }
    
    @IBAction func sliderTwo(_ sender: UISlider) {
        valTwo.text = String(Int(sender.value))
    }
    
    @IBAction func sliderThree(_ sender: UISlider) {
        valThree.text = String(Int(sender.value))
    }
    
    
    override func viewDidLoad() {
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

