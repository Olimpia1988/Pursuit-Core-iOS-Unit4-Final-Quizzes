//
//  SearchCell.swift
//  Quizzes
//
//  Created by Olimpia on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

protocol SearchCellDelegate: AnyObject {
    func settingButtonPushed(tag: Int)
}

class SearchCell: UICollectionViewCell {
    
    weak var delegate: SearchCellDelegate?
    
    lazy var label: UILabel = {
        var label = UILabel()
        label.textColor = #colorLiteral(red: 0.2644072175, green: 0.2628415823, blue: 0.2656146586, alpha: 1)
        label.font = UIFont(name: "arial", size: 16)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var settingButton: UIButton = {
        let settingButton = UIButton()
        settingButton.setImage(UIImage(named: "icons8-more_filled"), for: .normal)
        settingButton.addTarget(self , action: #selector(actionSeetFunc), for: .touchUpInside)
        return settingButton
    }()
    
    @objc func actionSeetFunc() {
        delegate?.settingButtonPushed(tag: settingButton.tag)
  }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(label)
        addSubview(settingButton)
        setCellContrains()
        backgroundColor = #colorLiteral(red: 0.8467837572, green: 0.9415003657, blue: 1, alpha: 1)
    }
    
    func setCellContrains() {
        label.translatesAutoresizingMaskIntoConstraints = false
        [label.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor), label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor), label.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35), label.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 22), label.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -22)].forEach{ $0.isActive = true }
        
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        [settingButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 22),settingButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)].forEach{ $0.isActive = true }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
