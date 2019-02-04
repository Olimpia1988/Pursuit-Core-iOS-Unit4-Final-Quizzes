//
//  ProfileView.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    lazy var buttonImage: UIButton = {
        var buttonImage = UIButton()
        buttonImage.setImage(UIImage(named:"placeholder-image"), for: .normal)
        buttonImage.layer.cornerRadius = buttonImage.frame.width / 2
      
        return buttonImage
    }()
    
    
    
//    lazy var alert: UIAlertAction = {
//        let alert = UIAlertAction()
//        return alert
//    }()
    

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white
        addSubview(buttonImage)
        contrainsBeingSetup()
    }
    
    func contrainsBeingSetup() {
        buttonImage.translatesAutoresizingMaskIntoConstraints = false
        [buttonImage.centerXAnchor.constraint(equalToSystemSpacingAfter: safeAreaLayoutGuide.centerXAnchor, multiplier: 0.5), buttonImage.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.25), buttonImage.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.5), buttonImage.centerYAnchor.constraint(equalToSystemSpacingBelow: safeAreaLayoutGuide.centerYAnchor, multiplier: 0.5)].forEach{ $0.isActive = true }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
