//
//  QuizCell.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

protocol QuizCellDelegate: AnyObject{
    func deleteCurrentObject(tag: Int)
}

class QuizCell: UICollectionViewCell {
    
    weak var delegate: QuizCellDelegate?
    
    lazy var label: UILabel = {
     var label = UILabel()
        label.text = ""
        label.textAlignment = .center
        label.adjustsFontForContentSizeCategory = true
        label.sizeToFit()
        label.font = UIFont(name: "arial", size: 16)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
 
        return label
    }()
    
    lazy var button: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icons8-more_filled"), for: .normal)
        button.addTarget(self, action: #selector(deleteThingy), for: .touchUpInside)

        return button
    }()
    
    @objc func deleteThingy() {
        delegate?.deleteCurrentObject(tag: button.tag)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = #colorLiteral(red: 1, green: 0.8526156545, blue: 0.9421479106, alpha: 1)
        addSubview(label)
        addSubview(button)
        setConstrainsUp()
       
    }
    
    func setConstrainsUp() {
        label.translatesAutoresizingMaskIntoConstraints = false
        [label.centerXAnchor.constraint(equalTo: centerXAnchor), label.centerYAnchor.constraint(equalTo: centerYAnchor), label.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 22), label.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -22)].forEach{$0.isActive = true }
       
        button.translatesAutoresizingMaskIntoConstraints = false
        [button.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 22),button.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)].forEach{ $0.isActive = true }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
