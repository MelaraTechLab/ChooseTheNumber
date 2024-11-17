//
//  main.swift
//  ChooseTheNumber
//
//  Created by Juan Cruz on 17/11/24.
//

import Foundation

var SecretNumber: Int = Int.random(in: 1...100)
var numberOfTries: Int = 0

print("I'm thinking of a number between 1 and 100. Can you guess it?")

while true {
    let guess: Int = ReadUserNumber()
    
    if guess == SecretNumber {
        print("You got it! The number was \(SecretNumber).")
        print("You take \(numberOfTries) tries.")
        break
    }else{
        numberPosition(SecretNumber, guess: guess)
        numberOfTries += 1
    }
}

func ReadUserNumber() -> Int {
    if let userNumber = readLine(strippingNewline: true), let number = Int(userNumber) {
        if !(0...100).contains(number) {
            print("The number must be between 0 and 100.")
            return ReadUserNumber()
        }else{
            return number
        }
    }else{
        print("The number must be an integer.")
        return ReadUserNumber()
    }
}

func numberPosition(_ number: Int, guess: Int){
    if guess < number {
        print("Your election is bellow from the special number. Try again!")
    }else{
        print("Your election is above from the special number. Try again!")
    }
}
    
