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
            return countryXValue.count
        }
            
        else {
            return yearXValue.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0 {
            return String(countryXValue[row])
        } else {
            
            return String(yearXValue[row])
        }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        countryX = countryXValue[pickerViewX.selectedRow(inComponent: 0)]
       
        yearX = yearXValue[pickerViewX.selectedRow(inComponent: 1)]
        
       

        
        
        labelX.text = "\(countryX) \(yearX)"
        
    }
    
    
    
    
 
    
    

    
    
    
    var countryX: String = ""
    
    var yearX: String = ""
    
    var dateX: String = ""
    
    var countryXValue = ["Australia","Europe","India","China","America","Japan"]
    
    var yearXValue = ["1990","1991","1992","1993","1994","1995","1996","1997","1998","1999"]
    
   
    @IBOutlet weak var labelX2: UILabel!
    
    
    @IBOutlet weak var labelX1: UILabel!
    
    
    
    @IBOutlet weak var labelX: UILabel!
    
    
    
    @IBOutlet weak var pickerViewX: UIPickerView!
    
    
    
    
    @IBOutlet weak var datePickerX: UIDatePicker!
    
    
    @IBAction func datePickerChangeX(_ sender: Any) {
        
        let dateFormatterX = DateFormatter()
        
        dateFormatterX.dateFormat = "EEEE,  MMM d   h:mm a"
   
        dateX = dateFormatterX.string(from: datePickerX.date)
        
        labelX1.text = "\(dateX)"
        
    }
    

    
    
    
    
    override func viewDidLoad() {
        
        
      labelX2.text = "\(countryX) \(yearX) \(dateX)"
        
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

