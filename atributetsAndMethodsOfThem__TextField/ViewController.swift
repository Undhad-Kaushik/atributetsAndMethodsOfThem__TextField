//
//  ViewController.swift
//  atributetsAndMethodsOfThem__TextField
//
//  Created by R87 on 23/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffActiovityIndicator: UISwitch!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var priceSlider: UISlider!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var QuantityLabel: UILabel!
    @IBOutlet weak var colorSegment: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurColourSegment()
        configureOnOffactivityIndicatorSwitch()
        configureStepper()
        configureSlider()
        
    }

    private func configureOnOffactivityIndicatorSwitch(){
        onOffActiovityIndicator.onTintColor = .green
        onOffActiovityIndicator.thumbTintColor = .black
        onOffActiovityIndicator.isOn = true
    }
    
    private func configurColourSegment(){
        colorSegment.selectedSegmentIndex = 2
        colorSegment.selectedSegmentTintColor = .red
        colorSegment.backgroundColor = .green
        
    }
    private func configureSlider(){
        priceSlider.thumbTintColor = .black
        priceSlider.tintColor = .yellow
        priceSlider.minimumValue = 0
        priceSlider.maximumValue = 100
    }
    
    private func configureStepper(){
        
        QuantityLabel.text = "No of Student: \(stepper.value)"
        stepper.minimumValue = 0
        stepper.stepValue = 20
        stepper.maximumValue = 2000
        stepper.value = 2000
    }

    @IBAction func onOffActivityIndicatorSwitchtapped(_ sender: UISwitch) {
        sender.isOn ? activityIndicatorView.startAnimating() : activityIndicatorView.stopAnimating()
    }
    
    
    @IBAction func colorSegmentButtonTapped(_ sender: UISegmentedControl) {
        
        switch colorSegment.selectedSegmentIndex{
        case 0:
            view.backgroundColor = .blue
            activityIndicatorView.stopAnimating()
            onOffActiovityIndicator.isOn = false
        case 1:
            view.backgroundColor = .yellow
            activityIndicatorView.startAnimating()
            onOffActiovityIndicator.isOn = true
        case 2:
            view.backgroundColor = .cyan
        case 3:
            view.backgroundColor = .black
        default:
            view.backgroundColor = .black
        }
    }
    
    @IBAction func stepperButtonTapped(_ sender: UIStepper) {
        QuantityLabel.text = "no of student: \(stepper.value)"
    }
    
    
    @IBAction func sliderValueChangeButtonTapped(_ sender: UISlider) {
        
        QuantityLabel.text = "price is \(Int(priceSlider.value))"
    }
    
}

