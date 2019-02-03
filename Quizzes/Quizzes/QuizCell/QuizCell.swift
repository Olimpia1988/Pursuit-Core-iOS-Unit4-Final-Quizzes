//
//  QuizCell.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizCell: UICollectionViewCell {
    
    lazy var label: UILabel = {
     var label = UILabel()
        label.text = "Text goes here"
        label.textAlignment = .center
        label.adjustsFontForContentSizeCategory = true
        label.sizeToFit()
        label.font = UIFont(name: "arial", size: 24)
 
        return label
    }()
    
    lazy var button: UIButton = {
        var button = UIButton()
        button.setTitle(". . .", for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = #colorLiteral(red: 1, green: 0.8526156545, blue: 0.9421479106, alpha: 1)
        addSubview(label)
        addSubview(button)
        setConstrainsUp()
       
    }
    
    func setConstrainsUp() {
        label.translatesAutoresizingMaskIntoConstraints = false
        [label.centerXAnchor.constraint(equalTo: centerXAnchor), label.centerYAnchor.constraint(equalTo: centerYAnchor)].forEach{$0.isActive = true }
       
        button.translatesAutoresizingMaskIntoConstraints = false
        [button.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 22),button.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)].forEach{ $0.isActive = true }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
