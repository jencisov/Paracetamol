//
//  ViewController.swift
//  Paracetamol
//
//  Created by Kuma on 4/25/17.
//  Copyright © 2017 Kuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,
UIPickerViewDelegate {
    
    @IBOutlet weak var paracetamolImageView: UIImageView!
    @IBOutlet weak var paracetamolLabel: UILabel!
    @IBOutlet weak var paracetamolPriceLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var statePickerButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var successImageView: UIImageView!
    
    let states = ["Alabama","Alaska","Arkansas","California","Carolina",
                  "Columbia","Maine","New York","Washington"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource=self
        statePicker.delegate=self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onStateButtonPressed(_ sender: Any) {
        showStatePicker(isShowing: true)
    }
    
    @IBAction func onBuyButtonPressed(_ sender: Any) {
        buy()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
                    inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        showStatePicker(isShowing: false)
    }
    
    func showStatePicker(isShowing : Bool){
        statePicker.isHidden = !isShowing
        countryLabel.isHidden = isShowing
        countryTextField.isHidden = isShowing
        zipCodeLabel.isHidden = isShowing
        zipCodeTextField.isHidden = isShowing
    }
    
    func buy(){
        paracetamolImageView.isHidden=true
        paracetamolLabel.isHidden=true
        paracetamolPriceLabel.isHidden=true
        divider.isHidden=true
        fullNameLabel.isHidden=true
        fullNameTextField.isHidden=true
        addressLabel.isHidden=true
        addressTextField.isHidden=true
        cityLabel.isHidden=true
        cityTextField.isHidden=true
        stateLabel.isHidden=true
        statePickerButton.isHidden=true
        statePicker.isHidden=true
        countryLabel.isHidden=true
        countryTextField.isHidden=true
        zipCodeLabel.isHidden=true
        zipCodeTextField.isHidden=true
        
        buyNowButton.isHidden=true
        successImageView.isHidden=false
    }
    
}
