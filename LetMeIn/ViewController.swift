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
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
}

