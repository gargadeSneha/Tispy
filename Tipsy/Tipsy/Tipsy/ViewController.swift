//
//  ViewController.swift
//  CalculatePatner
//
//  Created by TryCatch Classes on 17/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var txtfield: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var countlbl: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    var numberofpeople = 2
    var billtotal = 0.0
    var finaltesult = "0.0"
    var label = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     /*   stepper.minimumValue = 2
        stepper.maximumValue = 10
        stepper.isContinuous = true
        stepper.autorepeat = true*/
      //  countlbl.text = stepper.value.description
        
    }

    @IBAction func stepperAction(_ sender: UIStepper) {
      //  countlbl.text = sender.value.description
        countlbl.text = String(format: "%.0f", sender.value)
        numberofpeople = Int(sender.value)
    }
    
    @IBAction func calculateBtnTapped(_ sender: UIButton) {
        let bill = txtfield.text!
        if bill != "" {
            billtotal = Double(bill)!
            let result = billtotal / Double(numberofpeople)
            finaltesult = String(format: "%.2f", result)
            print(result)
        
        let VC = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            VC.myresult = String(result)
        self.navigationController?.pushViewController(VC, animated: true)
            
            lbl2.text = ""
            countlbl.text = "\(2)"
    }
}

}
