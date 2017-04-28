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
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var successImageView: UIImageView!

    let states = ["Alabama", "Alaska", "Arkansas", "California", "Carolina",
                  "Columbia", "Maine", "New York", "Washington"]

    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        successImageView.isUserInteractionEnabled = true
        successImageView.addGestureRecognizer(tapGestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onStateButtonPressed(_ sender: Any) {
        showStatePicker(isShowing: true)
    }

    @IBAction func onBuyButtonPressed(_ sender: Any) {
        buy(isBuying: true)
    }

    func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        buy(isBuying: false)
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

    func showStatePicker(isShowing: Bool) {
        statePicker.isHidden = !isShowing
        buyNowButton.isHidden = isShowing
    }

    func buy(isBuying: Bool) {
        paracetamolImageView.isHidden = isBuying
        paracetamolLabel.isHidden = isBuying
        paracetamolPriceLabel.isHidden = isBuying
        divider.isHidden = isBuying
        fullNameLabel.isHidden = isBuying
        fullNameTextField.isHidden = isBuying
        addressLabel.isHidden = isBuying
        addressTextField.isHidden = isBuying
        cityLabel.isHidden = isBuying
        cityTextField.isHidden = isBuying
        stateLabel.isHidden = isBuying
        statePickerButton.isHidden = isBuying

        buyNowButton.isHidden = isBuying
        successImageView.isHidden = !isBuying
    }

}