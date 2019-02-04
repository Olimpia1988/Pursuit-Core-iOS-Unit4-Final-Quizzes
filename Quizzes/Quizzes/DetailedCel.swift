//
//  DetailedCel.swift
//  Quizzes
//
//  Created by Olimpia on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailedCel: UICollectionViewCell {
    
    
    lazy var textView: UITextField = {
        var textView = UITextField()
        textView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(textView)
    }
    
    func constrains() {
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
