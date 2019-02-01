//
//  QuizzAPIClient.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

final class QuizzAPIClient {
    
    static func getQuizzData( completionHandler: @escaping(AppError?, [Quizz]?) -> Void) {
        
        let stringURL = "http://5c4d4c0d0de08100147c59b5.mockapi.io/api/v1/quizzes"
        
        
        NetworkHelper.shared.performDataTask(endpointURLString: stringURL, httpMethod: "GET", httpBody: nil ) { (appError, data) in
            if let appError = appError {
                print(appError)
            }
            if let data = data {
                do {
                    let quizData = try JSONDecoder().decode([QuizzesModel].self, from: data)
                    completionHandler(nil,quizData.first!.quizz )
                } catch {
                    if let appError = appError {
                    completionHandler(AppError.jsonDecodingError(appError), nil )
                    }
                }
            }
        }
    }
}
