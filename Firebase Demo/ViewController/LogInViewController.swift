//
//  LogInViewController.swift
//  Firebase Demo
//
//  Created by Kim Yeon Jeong on 2019/12/23.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    
    @IBOutlet weak var firstnameTextField: UITextField!
    
    
    @IBOutlet weak var lastnameTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
    
        
    }
    func setUpElements(){
        //Hide the error Lable
        errorLabel.alpha = 0
        
        //style the elements
        
        Utilities.styleTextField(firstnameTextField)
        
        Utilities.styleTextField(lastnameTextField)
        
        Utilities.styleFilledButton(loginButton)
        
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
    }
    
}
