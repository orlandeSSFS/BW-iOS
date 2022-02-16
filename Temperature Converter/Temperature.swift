//
//  Temperature.swift
//  Temperature Converter
//
//  Created by Benjamin Ethan Levy on 2/16/22.
//

import Foundation

struct Temperature {
    var tempInFahrenheit: Double
    var tempInCelsius: Double
    
    init(tempInFahrenheit: Double) {
        self.tempInFahrenheit = tempInFahrenheit
        tempInCelsius = (tempInFahrenheit - 32) * (5/9)
    }
    
    init(tempInCelsius: Double) {
        self.tempInCelsius = tempInCelsius
        tempInFahrenheit = (tempInCelsius * (9/5)) + 32
    }
}
