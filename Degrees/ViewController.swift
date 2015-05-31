//
//  ViewController.swift
//  Degrees
//
//  Created by Justin Jean-Pierre on 2015-05-21.
//  Copyright (c) 2015 Monsoon Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var inputTextField: UITextField!
	@IBOutlet var outputLabel: UILabel!

	@IBAction func didPressToFahrenheitButton(sender: UIButton) {
		if let degreesToConvert = inputTextField.text.toInt() {
			let convertedDegrees = celsiusToFahrenheit(Double(degreesToConvert))
			outputLabel.text = ("\(degreesToConvert) ˚C is \(convertedDegrees) ˚F")
		} else {
			outputLabel.text = "Please enter a valid temperature"
		}
	}

	@IBAction func didPressToCelsiusButton(sender: UIButton) {
		if let degreesToConvert = inputTextField.text.toInt() {
			let convertedDegrees = fahrenheitToCelsius(Double(degreesToConvert))
			outputLabel.text = ("\(degreesToConvert) ˚F is \(convertedDegrees) ˚C")
		} else {
			outputLabel.text = "Please enter a valid temperature"
		}
	}
	
	// C to F formula:
	// Tf = Tc * (9/5) + 32
	func celsiusToFahrenheit(degreesC: Double) -> Double {
		return (((degreesC * 9.0) / 5.0) + 32.0)
	}
	
	// F to C formula:
	// Tc = (Tf - 32) * (5/9)
	func fahrenheitToCelsius(degreesF: Double) -> Double {
		return (((degreesF - 32.0) * 50.0) / 9.0)
	}
}
