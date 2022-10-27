//
//  ViewController.swift
//  UdemyBirthdayNote
//
//  Created by alp on 27.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //Connections
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var birthdayText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        //Casting -> as? & as!
        if let newName = storedName as? String {
            nameLabel.text = newName
        }
        
        if let newbirthday = storedBirthday as? String {
            birthdayLabel.text = newbirthday
        }
        
    }
    
    //Button func
    @IBAction func saveButton(_ sender: Any) {
        //Data Storage
        UserDefaults.standard.set(nameText.text!, forKey: "name")
        UserDefaults.standard.set(birthdayText.text!, forKey: "birthday")
        //UserDefaults.standard.synchronize()
        
        nameLabel.text = "Name : \(nameText.text!)"
        birthdayLabel.text = "Birthday : \(birthdayText.text!)"
        
    }
    

}

