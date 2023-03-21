//
//  ViewController.swift
//  IbActionIbOut
//
//  Created by Yuri Alencar on 2023-03-16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Alfred"
    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("Vixeee")
    }
    
}

