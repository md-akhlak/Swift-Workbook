//
//  Game.swift
//  Apple Pie
//
//  Created by Batch - 1 on 21/10/24.
//

import Foundation

struct Game {
    var word : String
    var incorrectMovesRemaining : Int
    var guessedLetter : [Character]
    
    var formattedWord : String{
        var guessedWord = ""
        for letter in word{
            if guessedLetter.contains(letter){
                guessedWord += "\(letter)"
            }else{
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGussed(letter: Character){
        guessedLetter.append(letter)
        
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
}



