//
//  ViewController.swift
//  Hello World!
//
//  Created by Benjamin Ethan Levy on 2/1/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var helloLabel: UILabel!
    
    
    @IBOutlet weak var picker: UIPickerView!
    var pickerData: [String] = [String]()
    
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
        self.picker.delegate = self
        self.picker.dataSource = self
        
        pickerData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
    }
    @IBAction func changeText(_ sender: UIButton) {
        helloLabel.text = "This is me!"
    }
    override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()
          // Dispose of any resources that can be recreated.
      }

      // Number of columns of data
      func numberOfComponents(in pickerView: UIPickerView) -&gt; Int {
          return 1
      }
      
      // The number of rows of data
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -&gt; Int {
          return pickerData.count
      }
      
      // The data to return fopr the row and component (column) that's being passed in
      func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -&gt; String? {
          return pickerData[row]
      }
}

