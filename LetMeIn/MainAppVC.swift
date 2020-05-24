//
//  MainAppVC.swift
//  LetMeIn
//
//  Created by Aleksey on 0524..20.
//  Copyright © 2020 Aleksey Kabishau. All rights reserved.
//

import UIKit

class MainAppVC: UIViewController {

	@IBOutlet weak var usernameLabel: UILabel!
	
	var username: String!
	
	override func viewDidLoad() {
        super.viewDidLoad()

		usernameLabel.text = "Hello, \(username ?? "Unknow")!"
    }
}
