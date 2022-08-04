//
//  MyGreeter.swift
//  GreeterDemo
//
//  Created by 李永杰 on 2022/8/4.
//

import UIKit

class MyGreeter: NSObject {

    // MARK: - instance
    var currentDate: Date?
    
    func inputDate(date: Date) {
        self.currentDate = date
    }
    
    func output() -> String {
        var result = ""
        
        guard let currentHour = self.currentDate?.currentTime("HH") else {
            return "none"
        }
        let hour = currentHour.stringToInt()
        switch hour {
        case 0..<6:
            result = "Good evening"
            break
        case 6..<12:
            result = "Good morning"
            break
        case 12..<18:
            result = "Good afternoon"
            break
        case 18..<24:
            result = "Good evening"
            break
        default:
            result = "none"
            break
        }
        return result
    }
    
    // MARK: - class
    static func client() -> MyGreeter {
        let instance = MyGreeter()
        return instance
    }
}
