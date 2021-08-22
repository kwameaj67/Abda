//
//  LoginViewController.swift
//  Abda
//
//  Created by Kwame Agyenim - Boateng on 26/06/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var googleLoginButton: UIButton!
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var emailTextView: UIView!
    @IBOutlet weak var passwordFieldView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCornersStyles()
//        self.navigationController?.isNavigationBarHidden = false
        setupNavigationbar()
    }
    
    
    func setupNavigationbar(){
        navigationController?.navigationBar.layer.frame.origin.y = 40
    } 
    
   
    
    @IBAction func gotoSignUp(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "signup") as! SignUpViewController
//        vc.modalPresentationStyle = .fullScreen
//        navigationController?.pushViewController(vc, animated: true)
    }
}
extension LoginViewController{
    func roundedCornersStyles(){
        roundButtonCorners(button: loginButton)
        roundButtonCorners(button: googleLoginButton)
        roundViewCorners(view: emailTextView)
        roundViewCorners(view: passwordFieldView)
    }
    
}
