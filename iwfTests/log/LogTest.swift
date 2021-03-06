//
//  LogTest.swift
//  iwf
//
//  Created by Centny on 8/24/15.
//  Copyright (c) 2015 Snows. All rights reserved.
//

import UIKit
import XCTest
import iwf

class LogTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLog(){
        L().D("debug->%@,%@", "abc","xx")
        L().D(NSString(format: "s->%f,%@",11.2,"ss") as String)
        let str:NSString = NSString(format: "Hello, world %.2f", 42.12312312313)
        print(str)
        InitDocWriter()
        L().D("debug->%@,%@", "D","xx")
        L().I("info->%@,%@", "I","xx")
        L().W("warn->%@,%@", "W","xx")
        L().E("error->%@,%@", "E","xx")
        for a in 1...100{
            L().D("debug->%@,%05d", "D",a)
        }
        LOG_LEVEL=LOG_W
        L().D("debug->%@,%@", "D","xx")
        L().I("info->%@,%@", "I","xx")
        L().W("warn->%@,%@", "W","xx")
        L().E("error->%@,%@", "E","xx")
        flush_log()
        print("----->")
        print("----->")
        print("----->")
        let xx:String = Util.readf_("/log/t.log")!
        print(xx)
    }
    
    func testPerformanceLog() {
        // This is an example of a performance test case.
        self.measure() {
            L().D("debug->%@,%@", "D","xx")
        }
    }
    
}
