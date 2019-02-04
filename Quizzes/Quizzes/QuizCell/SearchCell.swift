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
        label.adjustsFontSizeToFitWidth = true
        label.adjustsFontForContentSizeCategory = true
        label.minimumScaleFactor = 14
        label.font = UIFont(name: "arial", size: 16)
        label.numberOfLines = 0
        var maximumLabelSize: CGSize = CGSize(width: 280, height: 9999)
        var expectedLabelSize: CGSize = label.sizeThatFits(maximumLabelSize)
        // create a frame that is filled with the UILabel frame data
        var newFrame: CGRect = label.frame
        // resizing the frame to calculated size
        newFrame.size.height = expectedLabelSize.height
        // put calculated frame into UILabel frame
        label.frame = newFrame
     // label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight(rawValue: 100))
        label.sizeToFit()
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
        [label.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor), label.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor), label.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.35)].forEach{ $0.isActive = true }
        
        settingButton.translatesAutoresizingMaskIntoConstraints = false
        [settingButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 22),settingButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)].forEach{ $0.isActive = true }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
