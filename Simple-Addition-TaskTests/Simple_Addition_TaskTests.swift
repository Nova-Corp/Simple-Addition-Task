//
//  Simple_Addition_TaskTests.swift
//  Simple-Addition-TaskTests
//
//  Created by ADMIN on 07/04/21.
//  Copyright © 2021 Success Resource Pte Ltd. All rights reserved.
//

@testable import Simple_Addition_Task
import XCTest

class Simple_Addition_TaskTests: XCTestCase {
    var inputValidationService: InputValidationService!
    let homeViewController = HomeViewController()

    override func setUp() {
        super.setUp()

        inputValidationService = InputValidationService()
    }

    override func tearDown() {
        super.tearDown()

        inputValidationService = nil
    }

    func test_is_valid_input_number() throws {
        let stringInput = "Hello"
        let numberInput = "1"

        let expectedError = ValidationError.invalidNumber
        var actualError: ValidationError?

        XCTAssertThrowsError(try inputValidationService.validateNumber(stringInput)) { error in
            actualError = error as? ValidationError
        }

        XCTAssertEqual(actualError, expectedError)
        XCTAssertNoThrow(try inputValidationService.validateNumber(numberInput))
    }

    func test_add_two_numbers() {
        let firstNumber = 1
        let secondNumner = 2
        let expectedResult = 3

        let actualResult = homeViewController.addNumber(firstNumber: firstNumber, secondNumber: secondNumner)

        XCTAssertEqual(actualResult, expectedResult)
    }
}
