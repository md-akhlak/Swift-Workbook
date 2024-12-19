//
//  ViewController.swift
//  Apple Pie
//
//  Created by Batch - 1 on 21/10/24.
//

import UIKit


class ViewController: UIViewController {
    var listOfWords: [String] = ["buccaneer", "swift","glorious", "incandescent", "bug", "programming", "apple", "pie"]

    var incorrectMovesAllowed = 7;
    var totalWins = 0{
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
//    outlets
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }

    
    var currentGame : Game!
    func newRound(){
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetter: [])
            enableLetterButtons(true)
            updateUI()
        }else {
            enableLetterButtons(true)
        }
 
    }
    
    func enableLetterButtons(_ enable: Bool){
        for button in letterButtons{
            button.isEnabled = enable
        }
    }
    
    func updateUI(){
        var letters = [String]()
        for letter in currentGame.formattedWord{
            letters.append(String(letter))
        }
        _ = letters.joined(separator: " ")
        
        correctWordLabel.text = currentGame.formattedWord
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        }else if currentGame.word == currentGame.formattedWord{
            totalWins += 1
        }else {
            updateUI()
        }
        
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGussed(letter: letter)

        updateGameState()
    }
    
}

