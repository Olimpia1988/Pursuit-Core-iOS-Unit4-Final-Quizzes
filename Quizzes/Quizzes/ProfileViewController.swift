//
//  ProfileViewController.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileView = ProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(profileView)
        
    }
    
    
}
