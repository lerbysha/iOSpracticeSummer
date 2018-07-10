//
//  ViewController.swift
//  classWork
//
//  Created by itisioslab on 09.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        checkAuth()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var pass: UITextField!
    var auth:Bool = false
    
    func checkAuth(){
        if UserDefaults.standard.string(forKey: "name")=="koko"{
            performSegue(withIdentifier: "auth", sender: nil)
        }
    }
    
    func checkPassword(with loginName:String, and passwordValue:Int){
            if passwordValue == 1 && loginName == "1" {
            let  idintifier="auth"
                UserDefaults.standard.set("koko", forKey: "name")
            performSegue(withIdentifier: idintifier, sender: nil)
        }
        else if passwordValue==111 && loginName == " Artur" {
            let myIdintifier = "myVC"
            performSegue(withIdentifier: myIdintifier, sender: nil)
        }
    }
        
    
    
    @IBAction func singin(_ sender: Any) {
        let loginValue = name.text
        let passwordValue = Int(pass.text!)
        checkPassword(with: loginValue!, and: passwordValue!)
    
    }
    @IBOutlet weak var singin: UIButton!
}

