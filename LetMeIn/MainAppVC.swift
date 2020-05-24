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
	@IBOutlet weak var avatarImageView: UIImageView!
	
	var user: User!
	
	override func viewDidLoad() {
        super.viewDidLoad()

		usernameLabel.text = "Hello, \(user.name)!"
		avatarImageView.image = user.avatar
    }
}
