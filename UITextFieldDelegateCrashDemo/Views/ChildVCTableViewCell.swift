//
//  ChildVCTableViewCell.swift
//  UITextFieldDelegateCrashDemo
//
//  Created by Jeremy Fleshman on 5/10/20.
//  Copyright © 2020 Jeremy Fleshman. All rights reserved.
//

import UIKit

class ChildVCTableViewCell: UITableViewCell {
    @IBOutlet weak var childVCTextField: UITextField!


    override func awakeFromNib() {
        super.awakeFromNib()

        childVCTextField.delegate = self
        self.childVCTextField.becomeFirstResponder()
    }
}

extension ChildVCTableViewCell: UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // Intention was to prevent users from creating a blank todoItem
        // I ended up removing this delegate and disabling the return key on an empty string
        // so that the UI could return true here when the ChildVC is popped
        // while the textField is blank and the firstResponder(read: keyboard's still open)
        if let _ = textField.text?.isEmpty {
            return false
        }

        return true
    }
}
