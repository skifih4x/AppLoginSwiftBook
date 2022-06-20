//
//  ViewController.swift
//  AppLoginSwiftBook
//
//  Created by Артем Орлов on 20.06.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let login = "User"
    let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginActionButton(_ sender: Any) {
        if loginTF.text == login && passwordTF.text == password {
            performSegue(withIdentifier: "WelcomeVC", sender: sender)
        } else {
            showAlert(with: "Не верно ввел login или password", and: "Пытайся еще")
        }
    }
    
    @IBAction func forgotLogin(_ sender: Any) {
        showAlert(with: "Логин User", and: "Попробуй еще раз")
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        showAlert(with: "Пароль Password", and: "Попробуй еще раз")
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.welcomeVC = loginTF.text
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else {return}
        loginTF.text = welcomeVC.loginTF
        passwordTF.text = welcomeVC.passwordTF
    }
    
}

//MARK: - UIAlertController

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK!", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
}


