//
//  ViewController.swift
//  Simple-Addition-Task
//
//  Created by ADMIN on 07/04/21.
//  Copyright © 2021 Success Resource Pte Ltd. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var answerLabel: UILabel!

    @IBOutlet var firstNumberTextField: UITextField!
    @IBOutlet var secondNumberTextField: UITextField!

    let inputValidationService = InputValidationService()

    @IBAction func resetButton(_ sender: UIButton) {
        setTextFieldToNil()

        answerLabel.text = "Your answer will be displayed here!"
    }

    @IBAction func addButton(_ sender: UIButton) {
        do {
            let firstNumer = try inputValidationService.validateNumber(firstNumberTextField.text)
            let secondNumer = try inputValidationService.validateNumber(firstNumberTextField.text)

            setTextFieldToNil()

            answerLabel.text = "Answer is: \(addNumber(firstNumber: firstNumer, secondNumber: secondNumer))"

        } catch let err {
            print(err.localizedDescription)
        }
    }

    func addNumber<T: Numeric>(firstNumber: T, secondNumber: T) -> T {
        return firstNumber + secondNumber
    }

    private func setTextFieldToNil() {
        [
            firstNumberTextField,
            secondNumberTextField,
        ].forEach { $0.text = nil }
    }
}
