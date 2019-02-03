//
//  QuizView.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizView: UIView {
    
    // here we go!
    
    lazy var quizCollectionView: UICollectionView = {
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
        backgroundColor = .white
        addSubview(quizCollectionView)
        setupConstrains()
        quizCollectionView.register(QuizCell.self, forCellWithReuseIdentifier: "QuizCell")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   func setupConstrains() {
    quizCollectionView.translatesAutoresizingMaskIntoConstraints = false
    [quizCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0), quizCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0), quizCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0), quizCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0), quizCollectionView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1.0)].forEach{$0.isActive = true}
    }
    
}
