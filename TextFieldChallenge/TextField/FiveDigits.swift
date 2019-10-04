//
//  First.swift
//  TextFieldChallenge
//
//  Created by Khalid Ajlan on 10/5/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit

class FiveDigits: NSObject, UITextFieldDelegate {

    
     func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
         let newText = textField.text! as NSString
         if(newText.length == 5){
            return false
         }
         return true
        
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
}
