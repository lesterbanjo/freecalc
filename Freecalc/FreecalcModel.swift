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

public protocol FreecalcModelListener {
    func CurrentCalculatorText_Changed()
}

class FreecalcModel {
    //private var firstValue:  Double = 0
    //private var secondValue: Double = 0
    private var _latestOperation: CalculatorOperations = .empty
    private var _currentCalculatorText: String = "0"
    private var _backgroundMemory: Double = 0
    private var freecalcModelListener: FreecalcModelListener?
    
    var latestOperation: CalculatorOperations {
        get {
            return _latestOperation
        }
        set {
            self._latestOperation = newValue
        }
    }
    
    public var currentCalculatorText: String {
        get {
            return _currentCalculatorText
        }
        set {
            self._currentCalculatorText = newValue
            if let listener = freecalcModelListener{
                listener.CurrentCalculatorText_Changed()
            }
            
        }
    }
    
    var backgroundMemory: Double {
        get {
            return _backgroundMemory
        }
        set {
            self._backgroundMemory = newValue
        }
    }
    



    
    init(listener: FreecalcModelListener?){
        freecalcModelListener = listener
        self.latestOperation = CalculatorOperations.add
        self.currentCalculatorText = "0"
        self.backgroundMemory = 0
    }
    
    
    
    func getCalculatorText() -> String{
        return currentCalculatorText
    }
    
    private func parseValue(text: String) -> Double{
        if let value = Double(text) {
            return value
        } else {
            return 0
        }
    }
    
    func setOperation(operation: CalculatorOperations){
        
        if operation == .result {
            switch latestOperation {
                case .add:
                    backgroundMemory += parseValue(text: self.currentCalculatorText)
                case .subtract:
                    backgroundMemory -= parseValue(text: self.currentCalculatorText)
                case .multiply:
                    backgroundMemory *= parseValue(text: self.currentCalculatorText)
                case .divide:
                    backgroundMemory /= parseValue(text: self.currentCalculatorText)
                default:
                    break
            }
            latestOperation = .empty
            currentCalculatorText = String(backgroundMemory)
            
        } else if operation == .clear {
            backgroundMemory = 0
            self.currentCalculatorText = "0"
            latestOperation = .empty
            
        } else if operation == .add || operation == .subtract || operation == .multiply || operation == .divide {
            // TODO: do stuff
            switch latestOperation{
                case .add:
                    backgroundMemory += parseValue(text: self.currentCalculatorText)
                case .subtract:
                    backgroundMemory -= parseValue(text: self.currentCalculatorText)
                case .multiply:
                    backgroundMemory *= parseValue(text: self.currentCalculatorText)
                case .divide:
                    backgroundMemory /= parseValue(text: self.currentCalculatorText)
                default:
                    break
            }
            latestOperation = operation
            currentCalculatorText = "0"
            
        } else if operation == .shiftSign {
            // TODO: shiftSign
            
        } else if operation == .empty {
            
        } else {
            // TODO: throw excwption
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        


        
//        switch operation{
//           
//            case .clear:
//                latestOperation = .empty
//                currentCalculatorText = "0"
//                backgroundMemory = 0
//            
//            case .result:
//                switch latestOperation {
//                    case .add:
//                        firstValue += secondValue
//                        secondValue = 0
//                        currentCalculatorText = String(firstValue)
//                    
//                    case .subtract:
//                        firstValue -= secondValue
//                        secondValue = 0
//                    
//                    default:
//                        latestOperation = operation
//                    
//            }
//
//            
//        default:
//            latestOperation = operation
//            
//        }
//        
//        self.latestOperation = operation
    }
    
    func addChar(char: CalculatorCharacter){
        if (currentCalculatorText.characters.count == 20){
            // show error message
            return
        }
        
        switch char{
            case .zero:
                currentCalculatorText += "0"
            
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
                if currentCalculatorText.characters.contains("."){
                    return
                }
                currentCalculatorText += "."
        }
        
        if currentCalculatorText.characters.first == "0" &&
            currentCalculatorText.characters.count > 1 &&
            !currentCalculatorText.characters.contains("."){
            currentCalculatorText = String(currentCalculatorText.characters.dropFirst(1))
        }
        
    }
    
    
}
