//
//  ViewController.swift
//  Hello World!
//
//  Created by Benjamin Ethan Levy on 2/1/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    
    
    @IBOutlet weak var webText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://www.ssfs.org") {
            do {
                let contents = try String(contentsOf: url)
                webText.text = contents
            } catch {
                // contents could not be loaded
            }
        } else {
            // The URL was bad!
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func changeText(_ sender: UIButton) {
        helloLabel.text = "This is me!"
    }
    
}

