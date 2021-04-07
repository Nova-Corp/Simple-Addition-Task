//
//  InputValidationService.swift
//
//
//  Created by ADMIN on 21/02/21.
//  Copyright © 2021 Success Resource Pte Ltd. All rights reserved.
//

import UIKit

struct InputValidationService {
    func validateNumber(_ number: String?) throws -> Int {
        guard let validNumber = Int(number!) else { throw ValidationError.invalidNumber }
        return validNumber
    }
}
