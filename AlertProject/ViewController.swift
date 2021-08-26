//
//  ViewController.swift
//  AlertProject
//
//  Created by Eren on 26.08.2021.
//

import UIKit

class ViewController: UIViewController {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        if usernameText.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Usename not found!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { UIAlertAction in
                print("button clicked")
            }
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordText.text == "" {
            let alert = UIAlertController(title: "Error!", message: "Password not found!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { UIAlertAction in
                print("button clicked")
            }
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordText.text != password2Text.text {
            let alert = UIAlertController(title: "Error!", message: "Password is don't match", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { UIAlertAction in
                print("button clicked")
            }
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }else {
            let alert = UIAlertController(title: "Success", message: "User OK", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
            
            
        }
        
        
        func makeAlert(title: String, messageInput: String){}
        
       /* let alert = UIAlertController(title: "Error!", message: "Usename not found!", preferredStyle: UIAlertController.Style.alert)
       let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { UIAlertAction in
           print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
 */
        
    }
    
}

