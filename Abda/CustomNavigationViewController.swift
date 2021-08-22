//
//  CustomNavigationViewController.swift
//  Abda
//
//  Created by Kwame Agyenim - Boateng on 06/07/2021.
//

import UIKit

class CustomNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeBarVisible()
      
    }
    func makeBarVisible(){
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.isTranslucent = true
    }
    


}
