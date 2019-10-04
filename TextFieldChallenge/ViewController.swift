//
//  ViewController.swift
//  TextFieldChallenge
//
//  Created by Khalid Ajlan on 10/4/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
       @IBOutlet weak var textField1: UITextField!
       @IBOutlet weak var textField2: UITextField!
       @IBOutlet weak var textField3: UITextField!
    
    let Di5its = FiveDigits()
    let CashText = CashTextField()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField1.delegate = Di5its
        textField2.delegate = CashText
        
        
    }


}

