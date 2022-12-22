//
//  Constants.swift
//  TaskCountdown
//
//  Created by 우주형 on 2022/12/23.
//

import UIKit

struct Constants {
    
    //MARK: - variables
    static var hasTopNotch: Bool {
        guard #available(ios 11, *), let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else { return false }
        return window.safeAreaInsets.top >= 44
    }
}

