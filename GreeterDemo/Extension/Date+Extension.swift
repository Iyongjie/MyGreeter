//
//  Date+Extension.swift
//  GreeterDemo
//
//  Created by 李永杰 on 2022/8/4.
//

import Foundation

public extension Date {
    
    func currentTime(_ format: String = "YYYY-MM-dd HH:mm:ss") -> String {
        let dateformatter = DateFormatter()
        dateformatter.timeZone = TimeZone(identifier: "Asia/Shanghai")
        dateformatter.dateFormat = format
        return dateformatter.string(from: self)
    }
}
