//
//  LocalError.swift
//  TTLoginTask
//
//  Created by ADMIN on 21/02/21.
//  Copyright © 2021 Success Resource Pte Ltd. All rights reserved.
//

import UIKit

enum ValidationError: LocalizedError {
    case invalidNumber

    var errorDescription: String? {
        switch self {
        case .invalidNumber:
            return "You have entered an invalid value."
        }
    }
}
