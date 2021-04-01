//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Юрий Чекалюк on 31.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: -IB Outlets
    @IBOutlet weak var userLoginTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    
    //MARK: Private Properties
    private let userName = "user"
    private let password = "123"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.nameLabelText = userName
    }
    
    //MARK: -IB Actions
    @IBAction func loginTapped() {
        if userLoginTF.text != userName || userPasswordTF.text != password {
            showAlert(
                with: "Error!",
                and: "Wrong username or password!"
            )
            return
        }
        performSegue(withIdentifier: "welcomeSegue", sender: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userLoginTF.text = nil
        userPasswordTF.text = nil
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(with: "Oops!", and: "👤 Your Username is: \(userName)")
        : showAlert(with: "Oops!", and: "🔐 Your Password is: \(password)")
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
