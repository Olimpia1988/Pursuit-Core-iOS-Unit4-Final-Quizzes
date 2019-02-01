//
//  ProfileView.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    lazy var alert: UIAlertAction = {
        let alert = UIAlertAction()
   //let alertController = UIAlertAction(title: <#T##String?#>, style: <#T##UIAlertAction.Style#>)
        
//        let alertController = UIAlertController(title: "Default search", message: "Please enter a default zip code e.g 11103 or city name e.g Miami ", preferredStyle: .alert)
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
//        let submitAction = UIAlertAction(title: "Submit", style: .default)
        return alert
    }()
    

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white 
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
