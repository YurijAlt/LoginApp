//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Юрий Чекалюк on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var userNameLabel: UILabel!
    
    var nameLabelText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, " + nameLabelText
    }
}
