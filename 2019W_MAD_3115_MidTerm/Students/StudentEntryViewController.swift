//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var txtStudentId: UITextField!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtStudentEmail: UITextField!
    
    @IBOutlet weak var txtM1: UITextField!
    
    @IBOutlet weak var txtM2: UITextField!
    
    @IBOutlet weak var txtM3: UITextField!
    
    @IBOutlet weak var txtM4: UITextField!
  
    @IBAction func btnCalculate(_ sender: UIButton) {
        
        
        
        
    }
    
    //@IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    @IBOutlet weak var lblCourse: UILabel!
    
  
    @IBOutlet weak var pickList: UIPickerView!
    
    var courseList = ["MADT","MODT", "CSD", "WADT"]
    
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.courseList.count
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.pickList.delegate = self
        self.pickList.dataSource = self
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblCourse.text = "Course: \(self.courseList[self.pickList.selectedRow(inComponent:0)])"
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.courseList[row]
    }
    
    
    @IBOutlet weak var lblDate: UILabel!
    
    
    @IBAction func pickDate(_ sender: UIDatePicker) {
        print(sender.date)
        lblDate.text = "BirthDate : \(sender.date)"
    }
    
    
   
    }
        

    













