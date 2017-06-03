//
//  FreecalcModel.swift
//  Freecalc
//
//  Created by Leslie Bayne on 2017-06-03.
//  Copyright © 2017 Leslie Bayne. All rights reserved.
//

import Foundation

public enum CalculatorOperations{
    case add
    case subtract
    case multiply
    case divide
    case result
    case shiftSign
    case clear
}

public enum CalculatorCharacter{
    case zero
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case comma
}

class FreecalcModel {
    var currentTotal: Double = 0
    var latestOperation: CalculatorOperations
    private var currentCalculatorText: String = "0"
    
    init(){
        self.latestOperation = CalculatorOperations.add
    }
    
    
    func setOperation(operation: CalculatorOperations){
        self.latestOperation = operation
    }
    
    func addChar(char: CalculatorCharacter){
        switch char{
            case CalculatorCharacter.zero:
                currentCalculatorText = "0"
            case CalculatorCharacter.one:
                currentCalculatorText += "1"
            case CalculatorCharacter.two:
                currentCalculatorText += "2"
            case CalculatorCharacter.three:
                currentCalculatorText += "3"
            case CalculatorCharacter.four:
                currentCalculatorText += "4"
            case CalculatorCharacter.five:
                currentCalculatorText += "5"
            case CalculatorCharacter.six:
                currentCalculatorText += "6"
            case CalculatorCharacter.seven:
                currentCalculatorText += "7"
            case CalculatorCharacter.eight:
                currentCalculatorText += "8"
            case CalculatorCharacter.nine:
                currentCalculatorText += "9"
            case CalculatorCharacter.comma:
                currentCalculatorText += "."
        }
    }
    
}
