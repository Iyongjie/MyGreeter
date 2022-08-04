//
//  GreeterDemoTests.swift
//  GreeterDemoTests
//
//  Created by 李永杰 on 2022/8/4.
//

import XCTest
@testable import GreeterDemo

class GreeterDemoTests: XCTestCase {


    func testClassMethod() throws {
        let result = MyGreeter.client().isKind(of: MyGreeter.self)
        assert(result, "It's not MyGreeter member")
    }
    
    func testClassMethodFail() throws {
        let result = MyGreeter.client().isMember(of: NSObject.self)
        assert(result, "It's not MyGreeter member")
    }
    
    func testDate() throws {
        
        let date = Date()
        let greeter = MyGreeter()
        greeter.inputDate(date: date)
        let result = greeter.output()
        assert(result.count > 4, "have no date")
    }
    
    func testDateFail() throws {
        
        let greeter = MyGreeter()
        let result = greeter.output()
        assert(result.count > 4, "have no date")
    }
}
