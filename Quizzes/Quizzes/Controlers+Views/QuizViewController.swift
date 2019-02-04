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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        quizzToDisplay = DataPersistence.getQuiz()
    }
    
    
}


extension QuizViewController :UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quizzToDisplay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let cell = collectionView.cellForItem(at: indexPath) as? QuizCell else { return }
       


        
       
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         guard let cell = quizView.quizCollectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCell else { return UICollectionViewCell() }
        
        let dataToShow = quizzToDisplay[indexPath.row]
        cell.label.text = dataToShow.quizTitle
        
       
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 300)
    }
    
    
}

extension QuizViewController: QuizCellDelegate {
    func deleteCurrentObject(tag: Int) {
        let alert = UIAlertController(title: "Do you want to delete this quiz from favorites", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Delete", style: .default, handler: { (UIAlertAction) in
            DataPersistence.deleteQuiz(atIndex: tag)
            
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    
}
