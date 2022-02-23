//
//  Temperature.swift
//  Temperature Converter
//
//  Created by Benjamin Ethan Levy on 2/16/22.
//

import Foundation

struct Temperature {
    var tempInFahrenheit: Double {
        didSet {
            let temp = (tempInFahrenheit - 32) * (5.0/9)
            if (tempInCelsius != temp) {
                tempInCelsius = temp
            }
        }
    }
    var tempInCelsius: Double {
        didSet {
            let temp = (tempInCelsius - 32) * (5.0/9)
            if (tempInFahrenheit != temp) {
                tempInFahrenheit = temp
            }
        }
    }
    
    init(tempInFahrenheit: Double) {
        self.tempInFahrenheit = tempInFahrenheit
        tempInCelsius = (tempInFahrenheit - 32) * (5.0/9)
    }
    
    init(tempInCelsius: Double) {
        self.tempInCelsius = tempInCelsius
        tempInFahrenheit = (tempInCelsius * (9/5.0)) + 32
    }
}
