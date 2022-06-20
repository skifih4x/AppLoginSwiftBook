//
//  WelcomeViewController.swift
//  AppLoginSwiftBook
//
//  Created by Артем Орлов on 20.06.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    private var welcomeVC: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeVC
        
    }

    @IBAction func logOutButton(_ sender: Any) {
        
        
    }
    
}
