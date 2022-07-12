//
//  ViewController.swift
//  carFuilPrice
//
//  Created by Anıl AVCI on 11.07.2022.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
   
    
    @IBOutlet weak var beginCityTextbox: UITextField!
    @IBOutlet weak var cityPickerView: UIPickerView!
    @IBOutlet weak var endCityTextbox: UITextField!
    
    @IBOutlet weak var endCityPickerView: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        endCityTextbox.endEditing(false)
        beginCityTextbox.endEditing(false)
      
    }
    
    var cityArray = cityName
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            
            if beginCityTextbox.isFirstResponder {
                return cityName.count
            }else {
                return cityName.count
            }
        }
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if beginCityTextbox.isFirstResponder {
                return cityName[row]
            }else {
                return cityName[row]
            }
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            
            if beginCityTextbox.isFirstResponder {
                let itemSelect = cityName[row]
                beginCityTextbox.text = itemSelect
            }else {
                let itemSelect = cityName[row]
                endCityTextbox.text = itemSelect
            }
        }

       

       
        
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
       
        if textField.isEditing == true {
            
            self.cityPickerView.isHidden = false
            //boş alana tıklayınca pickeri gizler
            let gestureRecognizer = UITapGestureRecognizer(target: self,action: #selector(hidePicker))
            view.addGestureRecognizer(gestureRecognizer)
            
            }
       // beginCityTextbox.endEditing(false)
       
        if textField.isEditing == true {
            
           
                    self.endCityPickerView.isHidden = false
            
            
            //boş alana tıklayınca pickeri gizler
            let gestureRecognizer1 = UITapGestureRecognizer(target: self,action: #selector(endhidePicker))
            view.addGestureRecognizer(gestureRecognizer1)
            
            }
        endCityTextbox.endEditing(false)
   
        }
    
    
    @objc func hidePicker() {
        self.cityPickerView.isHidden = true
       
    }
    @objc func endhidePicker() {
        
        self.endCityPickerView.isHidden = true
    }
}


    
  
   
