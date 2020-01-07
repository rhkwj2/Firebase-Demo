//
//  SignUpViewController.swift
//  Firebase Demo
//
//  Created by Kim Yeon Jeong on 2019/12/23.
//  Copyright © 2019 Kim Yeon Jeong. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var firstnameTextField: UITextField!
    
    
    @IBOutlet weak var lastnameTextField: UITextField!
    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var singUpButton: UIButton!
    
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    func setUpElements(){
        
        //Hide the error Label
        errorLabel.alpha = 0
        
       //style the Elements
        Utilities.styleTextField(firstnameTextField)
        Utilities.styleTextField(lastnameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(singUpButton)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // Check the fields and calidate that the data is correct, If everything is correct, this method returns nil, Otherwise, it returns the error message

    func validateFields() -> String? {
        
        // check that all fields are filled in
        if firstnameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
        lastnameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
        emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
        passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            return "Please fill in all fields."
            
        }
        
        //check if the password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            // password isn`t secure enough
            return "Plase make sure your password is at least 8 characters, contains a speacial character and a number."
            
        }
    
        
        return nil
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        
        //validate the fields
        let error = validateFields()
        
        if error != nil {
            
            //there`s something wrong with the feilds, show error message
            
         showError(error!)
        } else {
            
            // create the user
            Auth.auth().createUser(withEmail: <#T##String#>, password: <#T##String#>) { (result, err) in
                <#code#>
                
                //check for errors
                if err != nil {
                    //there was an error creating the user
                    self.showError("Error creating user")
                } else {
                    //user was created sucessfully, now store the first name and last name
                    
                }
                
            }
            //Transition to the home screen
                   
            
        }
        
      
    }
    
    func  showError(_ message:String) {
        //there`s something wrong with the feilds, show error message
                   
                   errorLabel.text = message
                   errorLabel.alpha = 1
                   
    }
    
}
