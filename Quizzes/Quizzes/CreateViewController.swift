//
//  CreateViewController.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

var userActive = false


class CreateViewController: UIViewController {
    
    var createView = CreateView()
   var quizToSend = [NewQuiz]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(createView)
       
        let leftButton = UIBarButtonItem(title: "Cancel", style: UIBarButtonItem.Style.plain, target: self, action: #selector(cancel))
        let rigthButton = UIBarButtonItem(title: "Create", style: UIBarButtonItem.Style.plain, target: self, action: #selector(create))
            self.navigationItem.leftBarButtonItem = leftButton
        self.navigationItem.rightBarButtonItem = rigthButton
    
        
    }
    
    @objc func cancel() {
    
        tabBarController?.selectedIndex = 0
    }
    
    @objc func create() {
//        DataPersistence.addQuiz(quiz: NewQuiz)
        tabBarController?.selectedIndex = 0
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        if userActive == false {
            userInteraction()
        }
        if userActive == true {
            
        }
    }
    
    func userInteraction() {
        let alertController = UIAlertController(title: nil, message: "Create profile", preferredStyle: .alert)
        let alert = UIAlertAction(title: "Create a profile", style: .default) { (UIAlertAction) in
            
        }
        
        alertController.addAction(alert)
        present(alertController, animated: true, completion: nil)
    }
    
    
}
