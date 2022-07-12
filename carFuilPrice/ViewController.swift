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
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    var cityArray = cityName

        public func numberOfComponents(in pickerView: UIPickerView) -> Int{
            return 1
        }

        public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{

            return cityArray.count
        }

        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

            self.view.endEditing(true)
            return cityArray[row]
        }

        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

            self.beginCityTextbox.text = self.cityArray[row]
           // self.endCityTextbox.text = self.cityArray[row]
          
        }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        beginCityTextbox.endEditing(false)
        if textField == self.beginCityTextbox {
                    self.cityPickerView.isHidden = false
            
            //boş alana tıklayınca pickeri gizler
            let gestureRecognizer = UITapGestureRecognizer(target: self,action: #selector(hidePicker))
            view.addGestureRecognizer(gestureRecognizer)
            
               
            }
        
        }
    
    @objc func hidePicker() {
        self.cityPickerView.isHidden = true
    }
}
