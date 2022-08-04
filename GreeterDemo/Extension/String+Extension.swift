//
//  String+Extension.swift
//  GreeterDemo
//
//  Created by 李永杰 on 2022/8/4.
//

import Foundation

extension String {
    
    func stringToInt() -> Int {
        let string = self
        if string.count == 0 {
            return 0
        }
        let result: Int = Int(string)!
        return result
    }
}
