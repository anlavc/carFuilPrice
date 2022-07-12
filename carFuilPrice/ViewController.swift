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
        
      
    }
    
    var cityArray = cityName
    var endCityArray = endcityName

        public func numberOfComponents(in pickerView: UIPickerView) -> Int{
            return 1
        }

        public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{

            return cityArray.count
        }
    public func endCitypickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{

        return endCityArray.count
    }

        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

            self.view.endEditing(true)
            return cityArray[row]
           
        }
        
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
 
      // if beginCityTextbox.endEditing(true) == true {
            beginCityTextbox.text = cityArray[row]
            
       // } else if endCityTextbox.endEditing(true) == true {
           endCityTextbox.text = endCityArray[row]
        // }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
      
        if textField == self.beginCityTextbox {
            beginCityTextbox.endEditing(false)
            self.cityPickerView.isHidden = false
            
            //boş alana tıklayınca pickeri gizler
            let gestureRecognizer = UITapGestureRecognizer(target: self,action: #selector(hidePicker))
            view.addGestureRecognizer(gestureRecognizer)
            
            }
        
        if textField == self.endCityTextbox {
            
            endCityTextbox.endEditing(false)
                    self.endCityPickerView.isHidden = false
            
            
            //boş alana tıklayınca pickeri gizler
            let gestureRecognizer1 = UITapGestureRecognizer(target: self,action: #selector(endhidePicker))
            view.addGestureRecognizer(gestureRecognizer1)
            
            }
        
        }
    
    @objc func hidePicker() {
        self.cityPickerView.isHidden = true
       
    }
    @objc func endhidePicker() {
        
        self.endCityPickerView.isHidden = true
    }
}

