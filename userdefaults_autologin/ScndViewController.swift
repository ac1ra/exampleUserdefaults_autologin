//
//  ScndViewController.swift
//  userdefaults_autologin
//
//  Created by ac1ra on 08.01.2021.
//

import UIKit

class ScndViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.isHidden = true
    }
    @IBAction func logoutUser(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "scndVC")
        self.navigationController?.popViewController(animated: true)
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
