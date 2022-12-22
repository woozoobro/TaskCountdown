//
//  FoundationExtensions.swift
//  TaskCountdown
//
//  Created by 우주형 on 2022/12/23.
//

import UIKit

extension Int {
    func appendZeroes() -> String {
        if (self < 10) {
            return "\(self)"
        } else {
            return "\(self)"
        }
    }
}

extension Double {
    func degreeToRadians() -> CGFloat {
        return CGFloat(self * .pi) / 180
    }
}
