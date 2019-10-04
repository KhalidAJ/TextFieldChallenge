//
//  CashTextField.swift
//  TextFieldChallenge
//
//  Created by Khalid Ajlan on 10/5/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit
class CashTextField: NSObject, UITextFieldDelegate {
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            let oldText = textField.text! as NSString
                var newText = oldText.replacingCharacters(in: range, with: string)
                var newTextString = String(newText)
                
                let digits = CharacterSet.decimalDigits
                var digitText = ""
                for c in (newTextString.unicodeScalars) {
                    if digits.contains(UnicodeScalar(c.value)!) {
                        digitText.append("\(c)")
                    }
                }
                
                // Format the new string
                if let numOfPennies = Int(digitText) {
                    newText = "$" + (String(numOfPennies/100)) + "." + self.centsStringFromInt(numOfPennies)
                } else {
                    newText = "$0.00"
                }
                
                textField.text = newText
                
                return false
            }
        func centsStringFromInt(_ value: Int) -> String {
           
           let cents = value % 100
           var centsString = String(cents)
           
           if cents < 10 {
               centsString = "0" + centsString
           }
           
           return centsString
       }
                
   }

