//
//  ViewController.swift
//  GreeterDemo
//
//  Created by 李永杰 on 2022/8/4.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.invokeMethod()
    }

    func invokeMethod() {
        // class
        let client = MyGreeter.client()
        print("type is \(client.classForCoder)")
        
        // instance
        let date = Date()
        
        let greeter = MyGreeter()
        greeter.inputDate(date: date)
        
        let result = greeter.output()
        print(result)
    }
}

