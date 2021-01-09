//
//  ViewController.swift
//  userdefaults_autologin
//
//  Created by ac1ra on 08.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtField_name: UITextField!
    
    @IBOutlet weak var txtField_pass: UITextField!
    
    @IBOutlet weak var label_bool: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if UserDefaults.standard.bool(forKey: "keyUserPass") == true{
            //user is already logged in just navigate him to scndVC
            let scndVC = storyboard?.instantiateViewController(withIdentifier: "scndVC") as! ScndViewController
            navigationController?.pushViewController(scndVC, animated: false)
            
        }
    }

    @IBAction func bttn(_ sender: Any) {
        if txtField_name.text == "test" && txtField_pass.text == "test" {
            //navigate to home screen
            UserDefaults.standard.set(true, forKey: "keyUserPass")
            let scndVC = storyboard?.instantiateViewController(withIdentifier: "scndVC") as! ScndViewController
            self.navigationController?.pushViewController(scndVC, animated: true)
            
        }
    }
    
}

