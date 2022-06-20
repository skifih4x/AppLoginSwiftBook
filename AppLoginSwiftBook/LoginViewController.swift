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

    private let login = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginActionButton(_ sender: Any) {
        performSegue(withIdentifier: "WelcomeVC", sender: sender)
    }

    @IBAction func forgotLogin(_ sender: Any) {
        showAlert(with: "Не верный логин или пароль", and: "Попробуй еще раз")
    }
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        showAlert(with: "Не верный логин или пароль", and: "Попробуй еще раз")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        
    }
    
    @IBAction override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        guard let welcomeVC = unwindSegue.source as? WelcomeViewController else {return}
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


