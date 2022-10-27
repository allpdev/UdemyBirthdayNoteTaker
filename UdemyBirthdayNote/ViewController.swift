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
       
    }
    
    //Button func
    @IBAction func saveButton(_ sender: Any) {
        
        nameLabel.text = "Name : \(nameText.text!)"
        birthdayLabel.text = "Birthday : \(birthdayText.text!)"
        
    }
    

}

