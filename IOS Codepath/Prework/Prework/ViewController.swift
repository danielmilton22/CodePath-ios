//
//  ViewController.swift
//  Prework
//
//  Created by Daniel Milton on 12/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
   
    
    @IBOutlet weak var partySizeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Quik Tip"
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.billAmountTextField.becomeFirstResponder()
        print("view did appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    
   
    @IBAction func partyStepper(_ sender: UIStepper) {
            partySizeLabel.text = Int(sender.value).description
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let partySize = Double(partySizeLabel.text!) ?? 0
        let total = (bill + tip) / partySize
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
    @IBAction func darkMode(_ sender: UISwitch) {
        if sender.isOn {
            overrideUserInterfaceStyle = .dark
            self.view.backgroundColor = UIColor.black
        

        }
        else {
            overrideUserInterfaceStyle = .light
            self.view.backgroundColor = UIColor.white
        }
    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let partySize = Double(partySizeLabel.text!) ?? 0
        let total = (bill + tip) / partySize
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

