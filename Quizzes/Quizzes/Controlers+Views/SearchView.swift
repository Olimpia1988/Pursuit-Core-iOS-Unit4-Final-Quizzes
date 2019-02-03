//
//  SearchView.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchView: UIView {
    
    lazy var searchCollectionView: UICollectionView = {
        var searchCollectionView = UICollectionViewCell()
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
        addSubview(searchCollectionView)
        setUpConstrains()
        searchCollectionView.register(SearchCell.self, forCellWithReuseIdentifier: "SearchCell")
    }
    
    func setUpConstrains() {
        searchCollectionView.translatesAutoresizingMaskIntoConstraints = false
        [searchCollectionView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0), searchCollectionView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0), searchCollectionView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0),  searchCollectionView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0)].forEach{ $0.isActive = true }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
