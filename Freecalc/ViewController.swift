//
//  ViewController.swift
//  Freecalc
//
//  Created by Leslie Bayne on 2017-06-03.
//  Copyright © 2017 Leslie Bayne. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FreecalcModelListener {

    private var model: FreecalcModel = FreecalcModel(listener: nil)
    //listener: self as! FreecalcModelListener
    func CurrentCalculatorText_Changed(){
        updateOutput()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        model = FreecalcModel(listener: self as FreecalcModelListener)

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
    }
    
    @IBAction func BtnOne_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.one)
    }
    
    @IBAction func BtnTwo_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.two)
    }
    
    @IBAction func BtnThree_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.three)
    }
    
    @IBAction func BtnFour_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.four)
    }
    
    @IBAction func BtnFive_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.five)
    }

    @IBAction func BtnSix_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.six)
    }
    
    @IBAction func BtnSeven_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.seven)
    }
    
    @IBAction func BtnEight_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.eight)
    }
    
    @IBAction func BtnNine_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.nine)
    }
    
    @IBAction func BtnComma_Clicked(_ sender: UIButton) {
        model.addChar(char: CalculatorCharacter.comma)
    }
    
    @IBAction func BtnEquals_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.result)
    }
    
    @IBAction func BtnPlus_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.add)
    }
    
    @IBAction func BtnMinus_Clicked(_ sender: Any) {
        model.setOperation(operation: CalculatorOperations.subtract)
    }
    
    
    @IBAction func BtnMultiply_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.multiply)
    }
    
    @IBAction func BtnDivide_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.divide)
    }
    
    @IBAction func BtnClear_Clicked(_ sender: UIButton) {
        model.setOperation(operation: CalculatorOperations.clear)
    }
    
    @IBOutlet var TxtOutput: UILabel!
    
    
}

