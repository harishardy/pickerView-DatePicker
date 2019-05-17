//
//  ViewController.swift
//  pickerView&DatePicker
//
//  Created by Harish Hardy on 14/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //Delegate function
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0
        {
            return countryXValue.count
        }
            
        else
        {
            return yearXValue.count
        }
    }
    
    //Delegate function
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0
        {
            return String(countryXValue[row])
        }
        else
        {
            return String(yearXValue[row])
        }
        
        
    }
    
    //Delegate function
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if component == 0
        {
            
            countryX = countryXValue[row] as String
        
            labelX2.text = "\(countryX) \(yearX)   \(dateX)"
            
        }
        
        else
        {
       
            yearX = yearXValue[row] as String
            
            labelX2.text = "\(countryX) \(yearX)   \(dateX)"
        }
        
    }
    
    
    // objective-c function
    
    @objc func datePickerValueChanged (datePickerX: UIDatePicker) {
        
        let dateFormatterX = DateFormatter()
        
        dateFormatterX.dateFormat = "EEEE,  MMM d   h:mm a"
        
        let dateValueX = dateFormatterX.string(from: datePickerX.date)
        
        dateX = dateValueX as String
        
        labelX2.text = "\(countryX) \(yearX)   \(dateX)"
        
    }
    
    // Declarations
    
    var countryXValue : [String] = [String]()
    
    var yearXValue : [String] = [String]()
    
    var countryX : String = ""
    
    var yearX : String = ""
    
    var dateX : String = ""
    
    // labelX2, pickerViewX, datePickerX
   
    @IBOutlet weak var labelX2: UILabel!
    
    @IBOutlet weak var pickerViewX: UIPickerView!
    
    @IBOutlet weak var datePickerX: UIDatePicker!
    
    
    // main function
    
    override func viewDidLoad() {
        
        datePickerX.addTarget(self, action: #selector(ViewController.datePickerValueChanged), for: UIControl.Event.valueChanged)
        
       // assigning array values
        
        countryXValue = ["Australia","Europe","India","China","America","Japan"]
        
        yearXValue = ["1990","1991","1992","1993","1994","1995","1996","1997","1998","1999"]

        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

