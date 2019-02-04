//
//  QuizViewController.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    var quizzToDisplay = [NewQuiz]() {
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

    }
    
    
}


extension QuizViewController :UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //to do: Segue to detailed view controller
       
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         guard let cell = quizView.quizCollectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCell else { return UICollectionViewCell() }
        
       // let dataToSet = quizzToDisplay[indexPath.row]
       
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 300)
    }
    
    
}
