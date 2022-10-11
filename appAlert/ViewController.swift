//
//  ViewController.swift
//  appAlert
//
//  Created by Anton Kaznacheev on 04.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    let structUsers = Users.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTF.text = structUsers.login
        passwordTF.text = structUsers.password
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tableVC = segue.destination as? UITabBarController else { return }
        guard let userVC = tableVC.viewControllers else { return }
  
        userVC.forEach{
           if let usersVC = $0 as? UserViewController {
               usersVC.users = structUsers
           } else if let navagation = $0 as? UINavigationController {
               let aboutVC = navagation.topViewController as? AboutsViewController
               aboutVC?.abouts = structUsers
           }
        }
    }
    
    @IBAction func didLoginIn() {
        if userTF.text != structUsers.login || passwordTF.text != structUsers.password {
            didAlert(
                title: "Errors",
                users: "Not User is Password!")
        }
        return
    }
    
    
    @IBAction func didFargotPassword(_ sender: Any) {
        didAlert(
            title: "Help, User:",
            users: "User")
    }
    
    @IBAction func didFsrgotUser(_ sender: UIButton) {
       didAlert(
        title: "Help password:",
        users: "Password")
    }
}

// MARK: Alert
extension ViewController {
    func didAlert(title: String, users weks: String){
        let alert = UIAlertController(
            title: "\(title)",
            message: "\(weks)",
            preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(
            title: "ОК",
            style: .cancel))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
}

