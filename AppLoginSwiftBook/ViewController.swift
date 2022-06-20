//
//  ViewController.swift
//  AppLoginSwiftBook
//
//  Created by Артем Орлов on 20.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        performSegue(withIdentifier: "WelcomeVC", sender: sender)
    }

}

