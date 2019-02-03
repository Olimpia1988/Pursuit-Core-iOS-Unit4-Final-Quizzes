//
//  SearchCell.swift
//  Quizzes
//
//  Created by Olimpia on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCell: UICollectionViewCell {
    
    lazy var label: UILabel = {
        var label = UILabel()
        label.text = "Text goes here"
        return label
    }()
    
    lazy var settingButton: UIButton = {
        let settingButton = UIButton()
        settingButton.setImage(UIImage(named: "icons8-more_filled"), for: .normal)
        return settingButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(label)
        addSubview(settingButton)
        setCellContrains()
        backgroundColor = #colorLiteral(red: 0.8467837572, green: 0.9415003657, blue: 1, alpha: 1)
    }
    
    func setCellContrains() {
        label.translatesAutoresizingMaskIntoConstraints = false
        [label.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor), label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)].forEach{ $0.isActive = true }
        
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        [settingButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 22),settingButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)].forEach{ $0.isActive = true }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
