//
//  SettingsViewController.swift
//  classWork
//
//  Created by itisioslab on 10.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        nameSort.setOn(UserDefaults.standard.bool(forKey: "name"), animated: true)
        numberSort.setOn(UserDefaults.standard.bool(forKey: "number"), animated: true)
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    @IBOutlet weak var nameSort: UISwitch!
    @IBOutlet weak var numberSort: UISwitch!
    
    @IBAction func nameAction(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "name")
        UserDefaults.standard.removeObject(forKey: "number")
        numberSort.setOn(false, animated: true)
    }
    
    @IBAction func numberAction(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: "number")
        UserDefaults.standard.removeObject(forKey: "name")
        nameSort.setOn(false, animated: true)
    }
    
    
    //@IBAction func orginizeAction(_ sender: UISwitch) {
      //  UserDefaults.standard.set(sender.isOn, forKey: "orginize")
   // }
    

    
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
