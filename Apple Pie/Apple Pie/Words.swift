//
//  Words.swift
//  Apple Pie
//
//  Created by Brian Wilkinson on 3/9/22.
//

import Foundation
struct Words {
    var listOfWords: [String]
    
    init() {
        if let startWordsPath = Bundle.main.path(forResource: "usa", ofType: "txt") {
            if let startWords = try? String(contentsOfFile: startWordsPath)
            {
                listOfWords = startWords.components(separatedBy: "\n")
        
            }
            else
            {
                listOfWords = ["error"]
            }
        } else {
            listOfWords = ["error"]
        }
    }
    
    func getWord() -> String {
        let wordIndex = Int.random(in: 1..<listOfWords.count)
        return listOfWords[wordIndex]
    }
}
