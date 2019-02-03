//
//  SeachViewController.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SeachViewController: UIViewController {
    
    var searchView = SearchView()
    
    var quizzToDisplay = [Quizz]() {
        didSet {
            DispatchQueue.main.async {
                //self.quizView.quizCollectionView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchView)
        giveUsTheData()
        searchView.searchCollectionView.delegate = self
        searchView.searchCollectionView.dataSource = self
        searchView.searchCollectionView.register(SearchCell.self, forCellWithReuseIdentifier: "SearchCell")

    }
    
    private func giveUsTheData() {
        QuizzAPIClient.getQuizzData{ (error, data) in
            if let error = error {
                print("Error: \(error)")
            }
            if let data = data {
                self.quizzToDisplay = data
                
            }
        }
    }
    
    
}

extension SeachViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = searchView.searchCollectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCell else { return UICollectionViewCell() }
        return cell
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 300)
    }
    }
    
    

