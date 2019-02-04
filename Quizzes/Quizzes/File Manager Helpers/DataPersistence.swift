//
//  DataPersistence.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class DataPersistence {
    private static let filename = "Quizz.plist"
    
    private static var quizzData = [NewQuiz]()
    
    static func getQuiz() -> [NewQuiz] {
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename).path
        if FileManager.default.fileExists(atPath: path) {
            if let data = FileManager.default.contents(atPath: path) {
                do {
                  quizzData = try PropertyListDecoder().decode([NewQuiz].self, from: data)
                } catch {
                    print("Property list encoding error: \(error)")
                }
            } else {
                print("Data is nil")
            }
        } else {
            print("\(filename) does not exist")
        }
           return quizzData
    }
    
 private init() {}
    
    static func saveQuizz() {
        let path = DataPersistenceManager.filepathToDocumentsDiretory(filename: filename)
        do {
            let data = try PropertyListEncoder().encode(quizzData)
            try data.write(to: path, options: Data.WritingOptions.atomic)
        } catch {
            print("property list enconding error: \(error)")
        }
    }
    
    static func editQuiz(quiz: NewQuiz, atIndex index: Int)  {
        quizzData.remove(at: index)
        quizzData.insert(quiz, at: index)
        saveQuizz()
    }
    
    static func addQuiz(quiz: NewQuiz) {
        quizzData.append(quiz)
        saveQuizz()
    }
    
    static func deleteQuiz(atIndex index: Int) {
        quizzData.remove(at: index)
        saveQuizz()
    }
    
    static func updateQuiz(index: Int) {
        quizzData.remove(at: index)
        saveQuizz()
    }
}


