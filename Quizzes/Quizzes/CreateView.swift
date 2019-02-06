//
//  CreateView.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {

    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Quizz title"
        textField.backgroundColor = #colorLiteral(red: 0.5844655633, green: 0.8717439175, blue: 1, alpha: 1)
        return textField
        }()
    
    lazy var topTextView: UITextView = {
       let topTextView = UITextView()
       topTextView.text = "Enter a fact!"
        topTextView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return topTextView
    }()
    
    lazy var buttomTextView: UITextView = {
        let buttomTextView = UITextView()
        buttomTextView.text = "Enter a answer!"
        buttomTextView.backgroundColor = #colorLiteral(red: 0.8797620535, green: 1, blue: 0.8432157636, alpha: 1)
        return buttomTextView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white
        addSubview(textField)
        addSubview(topTextView)
        addSubview(buttomTextView)
        setConstrains()
    }
    
    func setConstrains() {
        textField.translatesAutoresizingMaskIntoConstraints = false
        [textField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11), textField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11), textField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11)].forEach{ $0.isActive = true }
        
        topTextView.translatesAutoresizingMaskIntoConstraints = false
        [topTextView.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 11), textField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11), topTextView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11), topTextView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35), topTextView.bottomAnchor.constraint(equalTo: buttomTextView.topAnchor, constant: -11)].forEach{ $0.isActive = true }
        
        buttomTextView.translatesAutoresizingMaskIntoConstraints = false
        [buttomTextView.topAnchor.constraint(equalTo: topTextView.bottomAnchor, constant: 11), buttomTextView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11), buttomTextView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11), buttomTextView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35)].forEach{ $0.isActive = true }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
