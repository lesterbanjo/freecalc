//
//  ViewController.swift
//  Freecalc
//
//  Created by Leslie Bayne on 2017-06-03.
//  Copyright © 2017 Leslie Bayne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let model: FreecalcModel = FreecalcModel()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateOutput(){
        TxtOutput.text = model.getCalculatorText()
    }
    
    @IBAction func BtnZero_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.zero)
        self.updateOutput()
    }
    
    @IBAction func BtnOne_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.one)
        self.updateOutput()
    }
    
    @IBAction func BtnTwo_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.two)
        self.updateOutput()
    }
    
    @IBAction func BtnThree_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.three)
        self.updateOutput()
    }
    
    @IBAction func BtnFour_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.four)
        self.updateOutput()
    }
    
    @IBAction func BtnFive_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.five)
        self.updateOutput()
    }

    @IBAction func BtnSix_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.six)
        self.updateOutput()
    }
    
    @IBAction func BtnSeven_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.seven)
        self.updateOutput()
    }
    
    @IBAction func BtnEight_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.eight)
        self.updateOutput()
    }
    
    @IBAction func BtnNine_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.nine)
        self.updateOutput()
    }
    
    @IBAction func BtnComma_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.comma)
        self.updateOutput()
    }
    
    @IBAction func BtnEquals_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.result)
        self.updateOutput()
    }
    
    @IBAction func BtnPlus_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.add)
        self.updateOutput()
    }
    
    @IBAction func BtnMinus_Clicked(_ sender: Any) {
        model.setOperation(operation: CalculatorOperations.subtract)
        self.updateOutput()
    }
    
    
    @IBAction func BtnMultiply_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.multiply)
        self.updateOutput()
    }
    
    @IBAction func BtnDivide_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.divide)
        self.updateOutput()
    }
    
    @IBAction func BtnClear_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.clear)
        self.updateOutput()
    }
    
    @IBOutlet var TxtOutput: UILabel!
    
    
}

