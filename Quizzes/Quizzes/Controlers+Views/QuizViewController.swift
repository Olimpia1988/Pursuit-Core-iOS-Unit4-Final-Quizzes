//
//  QuizViewController.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    var quizzToDisplay = [Quizz]() {
        didSet {
            DispatchQueue.main.async {
                self.quizView.quizCollectionView.reloadData()
            }
        }
    }
    
    var quizView = QuizView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(quizView)
        self.quizView.quizCollectionView.register(QuizCell.self, forCellWithReuseIdentifier: "QuizCell")
        self.quizView.quizCollectionView.dataSource = self
        self.quizView.quizCollectionView.delegate = self
        giveUsTheData()

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


extension QuizViewController :UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quizzToDisplay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let cell = collectionView.cellForItem(at: indexPath) as? QuizCell else { return }
       
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = quizView.quizCollectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCell else { return UICollectionViewCell() }
        let quizzToSet = quizzToDisplay[indexPath.row]
        
        cell.label.text! = quizzToSet.quizTitle
    
        return cell 
    }
    
    
}
