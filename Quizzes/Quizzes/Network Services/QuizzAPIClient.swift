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
            else if let data = data {
                do {
                    let quizzes = try JSONDecoder().decode([Quizz].self, from: data)
                    completionHandler(nil,quizzes )
                } catch {
                    if let appError = appError {
                    completionHandler(AppError.jsonDecodingError(appError), nil )
                    }
                }
            } else {
                print("nothing.......")
            }
        }
    }
}
