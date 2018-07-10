//
//  MyTableVCTableViewController.swift
//  classWork
//
//  Created by itisioslab on 09.07.2018.
//  Copyright © 2018 itisioslab. All rights reserved.
//

import UIKit

class MyTableVCTableViewController: UITableViewController {
    var arrayOfObject:[User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayOfObject.append(User(name: "ACL", sName: "bbb", number: 43231))
        arrayOfObject.append(User(name: "sgj", sName: "gdsnj", number: 13))
        arrayOfObject.append(User(name: "adsad", sName: "gsfd", number: 13231))
        arrayOfObject.append(User(name: "44e32", sName: "vsvcx", number: 13231))
        arrayOfObject.append(User(name: "fdssd", sName: "fsdsff", number: 13231))
        arrayOfObject.append(User(name: "ACsaaL", sName: "badfqbb", number: 13231))
        
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if UserDefaults.standard.string(forKey: "name") != nil{
            arrayOfObject.sort{$0.name < $1.name}
            tableView.reloadData()
            print(0)
        }
        if UserDefaults.standard.string(forKey: "number") != nil{
            arrayOfObject.sort{$0.number < $1.number}
            tableView.reloadData()
            print(1)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfObject.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let model = arrayOfObject[indexPath.row]
        cell.textLabel?.text = model.name + " " + model.sName
        cell.detailTextLabel?.text = String(model.number)
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let model = arrayOfObject[indexPath.row]
        performSegue(withIdentifier: "info", sender: model)
    }
   

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "info"{
            let destinationVC = segue.destination as! VCViewController
            destinationVC.user = sender as! User
        }
    }
    
    @IBAction func buttom(_ sender: Any) {
    }
    
}
