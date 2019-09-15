//
//  ViewController.swift
//  Word Garden
//
//  Created by Kyle Gil Tan on 9/15/19.
//  Copyright © 2019 Kyle Gil Tan. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In viewDidLoad, is guessed letter field the first responder?", guessedLetterField.isFirstResponder)
    }
    
    func updateUIAfterGuess(){
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextView) {
        print("Hey the guessed letter field changed!")
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        print("In doneKeyPressed, is guessed letter field the first responder before updateUIAfteGuess?", guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("In doneKeyPressed, is guessed letter field the first responder after updateUIAfteGuess?", guessedLetterField.isFirstResponder)
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        print("In guessLetterButtonPressed, is guessed letter field the first responder before updateUIAfteGuess?", guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("In guessLetterButtonPressed, is guessed letter field the first responder after updateUIAfteGuess?", guessedLetterField.isFirstResponder)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        
    }
    
}

