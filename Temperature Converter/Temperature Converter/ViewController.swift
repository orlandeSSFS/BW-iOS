//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Benjamin Ethan Levy on 2/16/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var getTemp: UITextField!
    @IBOutlet weak var switchTemp: UISwitch!
    @IBOutlet weak var displayTemp: UILabel!
    var temp: Temperature?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currentTemp = Double(getTemp.text!)
        if switchTemp.isOn {
             temp = Temperature(tempInCelsius: currentTemp!)
        }
        else {
             temp = Temperature(tempInFahrenheit: currentTemp!)
        }
        changeTemp()
    }
    @IBAction func updateTemp(_ sender: Any) {
        changeTemp()
    }
    
    func changeTemp() {
        if (!switchTemp.isOn) {
            displayTemp.text = "\(temp)"
        }
        else {
            displayTemp.text = "\(temp)"
        }
    }
}

