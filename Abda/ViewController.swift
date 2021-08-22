//
//  ViewController.swift
//  Abda
//
//  Created by Kwame Agyenim - Boateng on 26/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appTextStack: UIStackView!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonStyles()
       
        configureLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    func buttonStyles(){
       roundButtonCorners(button: button)
    }

    @IBAction func goToLogin(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(identifier: "login") as! LoginViewController
//        vc.modalPresentationStyle = .fullScreen
//        navigationController?.pushViewController(vc, animated: true)
    }
    
    func configureLayout(){
        self.appTextStack.transform = CGAffineTransform(translationX: 0, y: self.view.frame.height )
        self.button.transform = CGAffineTransform(translationX: 0, y: self.view.frame.height)
        UIView.animate(withDuration:2, delay:0, options: []) {
            self.appTextStack.transform = CGAffineTransform(translationX: 0, y: 0)
        } completion: { _ in
            print("text done")
        }
        UIView.animate(withDuration:1.8, delay: 0.3, options: []) {
            self.button.transform = CGAffineTransform(translationX: 0, y: 0)
        } completion: { _ in
            print("Done")
        }
       

        
    }
}

