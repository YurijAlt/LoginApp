//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Юрий Чекалюк on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: Private Properties
    private let userName = "Alexey"
    private let password = "123"

    //MARK: -IB Outlets
    @IBOutlet weak var userLoginTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    
    //MARK: -Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.nameLabelText = "Welcome, \(userLoginTF.text!)"
    }

    //MARK: -IB Actions
    @IBAction func forgotLoginTapped() {
        
        
    }
    
    @IBAction func forgotPasswordTapped() {
    }
}




//MARK: - Private Methods
extension LoginViewController {
    
    
    
}
