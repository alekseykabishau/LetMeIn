//
//  ViewController.swift
//  LetMeIn
//
//  Created by Aleksey on 0523..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var usernameTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	
	let correctUsername = "Aleksey"
	let correctPassword = "pass123"
	
	
	@IBAction func loginButtonTapped(_ sender: UIButton) {
		
		guard usernameTextField.text == correctUsername, passwordTextField.text == correctPassword else {
			incorrectLoginAlert()
			return
		}
		
		let deadline = DispatchTime.now() + .seconds(3)
		DispatchQueue.main.asyncAfter(deadline: deadline) {
			print(#function)
			
			let user = User(name: "Aleksey", age: 30, avatar: #imageLiteral(resourceName: "Aleksey"))
			self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: user)
		}
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let mainAppVC = segue.destination as? MainAppVC,
			let user = sender as? User {
			mainAppVC.user = user
			mainAppVC.modalPresentationStyle = .fullScreen
		}
	}
	
	
	func incorrectLoginAlert() {
		
		let message = "Incorrect username or password. Please try again"
		let alertVC = UIAlertController(title: "Login Failed", message: message, preferredStyle: .alert)
		let dissmissAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
		alertVC.addAction(dissmissAction)
		present(alertVC, animated: true, completion: nil)
	}
}

