//
//  VCViewController.swift
//  classWork
//
//  Created by itisioslab on 09.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class VCViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var number: UILabel!
    var user:User!
    
    @IBOutlet weak var image: UIImageView!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name?.text = user.name + " " + user.sName
        number?.text =  String(user.number)
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    

}
