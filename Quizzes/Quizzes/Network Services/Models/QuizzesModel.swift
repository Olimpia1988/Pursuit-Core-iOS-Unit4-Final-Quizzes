//
//  QuizzesModel.swift
//  Quizzes
//
//  Created by Olimpia on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

struct QuizzesModel: Codable {
    var quizz: [Quizz]
}

struct Quizz: Codable {
    var id: String
    var quizTitle: String
    var facts: [String]
}
