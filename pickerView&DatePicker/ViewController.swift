//
//  ViewController.swift
//  pickerView&DatePicker
//
//  Created by Harish Hardy on 14/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return countryX.count
        }
            
        else {
            return yearX.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0 {
            return String(countryX[row])
        } else {
            
            return String(yearX[row])
        }
    }
    
    
    let countryX = ["Australia","Europe","India","China","America","Japan"]
    
    let yearX = ["1990","1991","1992","1993","1994","1995","1996","1997","1998","1999"]
    
    @IBOutlet weak var labelX: UILabel!
    
    
    
    @IBOutlet weak var pickerViewX: UIPickerView!
    
    
    
    
    @IBOutlet weak var datePickerX: UIDatePicker!
    
    
    
  
    @IBAction func buttonX(_ sender: UIButton) {
    }
    
    

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

