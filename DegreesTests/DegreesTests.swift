//
//  DegreesTests.swift
//  DegreesTests
//
//  Created by Justin Jean-Pierre on 2015-05-21.
//  Copyright (c) 2015 Monsoon Company. All rights reserved.
//

import UIKit
import XCTest

class DegreesTests: XCTestCase {

	func testCelsiusToFahrenheit() {
		let degreesC = 70.0
		let degreesF = ViewController().celsiusToFahrenheit(degreesC)
		let expectedF = 158.0
		
		println("in: \(degreesC) out: \(degreesF)")
		
		XCTAssertEqual(degreesF, expectedF, "")
	}
	
	func testFahrenheitToCelsius() {
		let degreesF = 86.0
		let degreesC = ViewController().fahrenheitToCelsius(degreesF)
		let expectedC = 30.0
		
		println("in: \(degreesF) out: \(degreesC)")
		
		XCTAssertEqual(degreesC, expectedC, "")
	}
	
}
