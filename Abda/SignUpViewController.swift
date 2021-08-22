//
//  SignUpViewController.swift
//  Abda
//
//  Created by Kwame Agyenim - Boateng on 26/06/2021.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var nameTextView: UIView!
    @IBOutlet weak var emailTextView: UIView!
    @IBOutlet weak var passwordTextView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationbar()
        roundCornersStyles()
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func setupNavigationbar(){
        navigationController?.navigationBar.layer.frame.origin.y = 40
    }

    @IBAction func goToLogin(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}
extension SignUpViewController{
    func roundCornersStyles(){
        roundButtonCorners(button: signupButton)
        roundViewCorners(view: nameTextView)
        roundViewCorners(view: emailTextView)
        roundViewCorners(view: passwordTextView)
    }
}
