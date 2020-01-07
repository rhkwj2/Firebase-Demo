//
//  ViewController.swift
//  Firebase Demo
//
//  Created by Kim Yeon Jeong on 2019/12/23.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//
// https://www.youtube.com/watch?v=1HN7usMROt8

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var signupButton: UIButton!
    
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpElements()
        
    
    }
    func setUpElements() {
        Utilities.styleFilledButton(signupButton)
        
        Utilities.styleHollowButton(loginButton)
        
    }
      

}

