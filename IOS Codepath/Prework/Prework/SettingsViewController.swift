//
//  SettingsViewController.swift
//  Prework
//
//  Created by Daniel Milton on 12/10/21.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var tipOneTextField: UITextField!
    @IBOutlet weak var tipTwoTextField: UITextField!
    @IBOutlet weak var tipThreeTextField: UITextField!
    @IBOutlet weak var darkMode: UISwitch!
    
    @IBAction func darkMode(_ sender: UISwitch) {
        if sender.isOn {
            overrideUserInterfaceStyle = .dark
            self.view.backgroundColor = UIColor.black
        

        }
        else {
            overrideUserInterfaceStyle = .light
            self.view.backgroundColor = UIColor(red: 255, green:233, blue: 206, alpha: 1)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
