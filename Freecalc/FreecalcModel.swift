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
    case empty
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

public protocol FreecalcModelListenerProtocol{
    func modelUpdated()
}

class FreecalcModel {
    private var firstValue:  Double = 0
    private var secondValue: Double = 0
    private var latestOperation: CalculatorOperations
    private var currentCalculatorText: String = "0"
    private var freecalcModelListenerProtocol: FreecalcModelListenerProtocol
    
    init(freecalcModelListenerProtocol: FreecalcModelListenerProtocol){
        self.latestOperation = CalculatorOperations.add
        self.freecalcModelListenerProtocol = freecalcModelListenerProtocol
    }
    
    func getCalculatorText() -> String{
        return currentCalculatorText
    }
    
    func setOperation(operation: CalculatorOperations){
        switch operation{
            case .clear:
                latestOperation = .add
                currentCalculatorText = "0"
            
            case .result:
                switch latestOperation {
                case .add:
                    firstValue += secondValue
                    secondValue = 0
                    currentCalculatorText = String(firstValue)
                    
                case .subtract:
                    firstValue -= secondValue
                    secondValue = 0
                    
                default:
                    <#code#>
            }
//            latestOperation = operation
            
        default:
            latestOperation = operation
            
        }
        
        self.latestOperation = operation
    }
    
    func addChar(char: CalculatorCharacter){
        switch char{
            case .zero:
                currentCalculatorText = "0"
            
            case .one:
                currentCalculatorText += "1"
            
            case .two:
                currentCalculatorText += "2"
            
            case .three:
                currentCalculatorText += "3"
            
            case .four:
                currentCalculatorText += "4"
            
            case .five:
                currentCalculatorText += "5"
            
            case .six:
                currentCalculatorText += "6"
            
            case .seven:
                currentCalculatorText += "7"
            
            case .eight:
                currentCalculatorText += "8"
            
            case .nine:
                currentCalculatorText += "9"
            
            case .comma:
                currentCalculatorText += "."
        }
    }
    
}
