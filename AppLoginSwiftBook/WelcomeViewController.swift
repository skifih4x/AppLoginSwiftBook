//
//  WelcomeViewController.swift
//  AppLoginSwiftBook
//
//  Created by Артем Орлов on 20.06.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeVC: String!
    var loginTF: String!
    var passwordTF: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(welcomeVC ?? "")"
        
    }

    @IBAction func logOutButton(_ sender: Any) {
        dismiss(animated: true)

    }
    
}
