//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Тимур on 19.10.2023.
//

import UIKit
import AVFoundation


struct CalculatorLogic {
    
    private var number: Double?
    var player: AVAudioPlayer!
    
    private var preliminaryCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        if let n = number {
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n * 0.01
            case "=":
                return performTwoNumsCalculation(n2: n)
            default:
                preliminaryCalculation = (n1: n, calcMethod: symbol)
                
            }
        }
        return nil
    }
    
    private func performTwoNumsCalculation(n2: Double) -> Double? {
        if let n1 = preliminaryCalculation?.n1,
           let operation = preliminaryCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "÷":
                return n1 / n2
            case "×":
                return n1 * n2
            default:
                fatalError("The operation does not match")
            }
        }
        return nil
    }
    
    mutating func playSound() {
        let url = Bundle.main.url(forResource: "tap-sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
