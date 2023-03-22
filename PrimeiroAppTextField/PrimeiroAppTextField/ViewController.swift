//
//  ViewController.swift
//  PrimeiroAppTextField
//
//  Created by Yuri Alencar on 2023-03-21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite o seu nome"
        emailTextField.placeholder = "Digite o seu e-mail"
        nameTextField.delegate = self
        emailTextField.delegate = self
        nameTextField.layer.borderWidth = 1
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
    }


}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        if nameTextField == nameTextField {
            nameTextField.layer.borderColor = UIColor.orange.cgColor
            nameTextField.layer.borderWidth = 2
        } else {
            emailTextField.layer.borderColor = UIColor.purple.cgColor
            emailTextField.layer.borderWidth = 2
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        textField.layer.borderWidth = 0
//        if nameTextField.hasText == true && emailTextField.hasText == true {
//            view.backgroundColor = .blue
//        } else {
//            view.backgroundColor = .red
//        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    }
}
