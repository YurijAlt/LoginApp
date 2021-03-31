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
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view?.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.nameLabelText = "Welcome, \(userLoginTF.text!)"
    }
    
    //MARK: -IB Actions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userLoginTF.text = ""
        userPasswordTF.text = ""
    }
    
    @IBAction func loginTapped() {
        if userLoginTF.text == userName && userPasswordTF.text == password {
        } else {
            showAlert(with: "Error!", and: "Wrong username or password!")
        }
    }
    
    @IBAction func forgotLoginTapped() {
        showAlert(with: "Oops!", and: "👤 Your Username is: \(userName)")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(with: "Oops!", and: "🔐 Your Password is: \(password)")
    }
}

//MARK: - Private Methods
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title , message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
