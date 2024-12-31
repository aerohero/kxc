//
//  ViewController.swift
//  HelloSwiftProject
//
//  Created by Sean on 11/10/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ValueLabel: UILabel!
    
    @IBOutlet weak var InputField: UITextField!
    
    @IBAction func ShowValue(_ sender: Any) {
        let name = InputField.text!
        ValueLabel.text = "Hello, \(name)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

