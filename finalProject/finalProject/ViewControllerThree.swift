//
//  ViewControllerThree.swift
//  finalProject
//
//  Created by Jacqueline Moreno on 4/30/20.
//  Copyright © 2020 Jacqueline Moreno. All rights reserved.
//

import UIKit

    var selection:String!
    
class ViewControllerThree: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

        @IBOutlet weak var bonus: UILabel!
        
        @IBOutlet weak var picker: UIPickerView!
    
        @IBOutlet weak var pickerVal: UILabel!
        
         let items = ["Fun on the Square", "Local restaurants", "Floating the river", "Alkek Stairs"]
        
        public func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return items.count
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return items[row]
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            selection = items[row]
            pickerVal.text = "You selected: " + selection
        }
        
        
        @IBAction func bonusSwitch(_ sender: UISwitch) {
            if sender.isOn {
               global.bonusSwitch = "YOU BET!!!"
                 bonus.text = global.bonusSwitch
            }
            else {
               global.bonusSwitch = "Hmm maybe..."
                 bonus.text =  global.bonusSwitch
                }
        }
        

        override func viewDidLoad() {
            super.viewDidLoad()
            picker.delegate = self
            picker.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
