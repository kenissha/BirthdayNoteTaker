//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Rifat Ozturk on 19.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let savename = UserDefaults.standard.object(forKey: "name")
        let savebirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        if let newName = savename as?  String {
            nameLabel.text = newName
        }
        
        if let newBirthday = savebirthday as? String {
            birthdayLabel.text = newBirthday
        }
        
        
        
    }
    
    

    @IBAction func saveClicked(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")

        
        nameLabel.text = nameTextField.text
        birthdayLabel.text = birthdayTextField.text
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let savename = UserDefaults.standard.object(forKey: "name")
        let savebirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if (savename as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "name :"
        }
        
        if (savebirthday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdayLabel.text = "Birthday: "
        }
        
        
       
    }
    
    
    
    
}

