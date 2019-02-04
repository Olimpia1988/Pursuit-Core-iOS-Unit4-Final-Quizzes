//
//  DetailedView.swift
//  Quizzes
//
//  Created by Olimpia on 2/2/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class DetailedView: UIView {

    lazy var detailedCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 175, height: 350)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets.init(top: 10, left: 5, bottom: 10, right: 5
        )
        let cv = UICollectionView.init(frame: UIScreen.main.bounds, collectionViewLayout: layout)
        cv.backgroundColor = #colorLiteral(red: 0.8696357608, green: 0.8644666076, blue: 0.8736096025, alpha: 1)
        return cv
    }()
   
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(detailedCollectionView)
    }
    
    func lasConstrains() {
        detailedCollectionView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
