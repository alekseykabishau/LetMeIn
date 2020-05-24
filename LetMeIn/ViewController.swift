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
	
	@IBAction func loginButtonTapped(_ sender: UIButton) {
		
		let deadline = DispatchTime.now() + .seconds(3)
		DispatchQueue.main.asyncAfter(deadline: deadline) {
			print(#function)
			self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: self.usernameTextField.text)
		}
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let mainAppVC = segue.destination as? MainAppVC,
			let username = sender as? String {
			mainAppVC.username = username
			mainAppVC.modalPresentationStyle = .fullScreen
		}
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
}

