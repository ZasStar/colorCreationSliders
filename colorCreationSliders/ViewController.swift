//
//  ViewController.swift
//  colorCreationSliders
//
//  Created by Александр Захлыпа on 25.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // slidersSetup()
        redLabelValue.text = redSlider.value.formatted()
        greenLabelValue.text = greenSlider.value.formatted()
        blueLabelValue.text = blueSlider.value.formatted()
        mainView.layer.cornerRadius = 25
        
    }
    
    @IBAction func sliderAction() {
        mixColor()
        redLabelValue.text = String(format: "%.2f", redSlider.value)
        greenLabelValue.text = String(format: "%.2f", greenSlider.value)
        blueLabelValue.text = String(format: "%.2f", blueSlider.value)
    }

//    @IBAction func redSliderAction() {
////        mainView.backgroundColor = .red
////        mainView.backgroundColor = mainView.backgroundColor?.withAlphaComponent(CGFloat(redSlider.value))
//        redLabelValue.text = String(format: "%.2f", redSlider.value)
//    }
//
//    @IBAction func greenSliderAction() {
////        mainView.backgroundColor = .green
////        mainView.backgroundColor = mainView.backgroundColor?.withAlphaComponent(CGFloat(greenSlider.value))
//        greenLabelValue.text = String(format: "%.2f", greenSlider.value)
//    }
//
//    @IBAction func blueSliderAction() {
////        mainView.backgroundColor = .blue
////        mainView.backgroundColor = mainView.backgroundColor?.withAlphaComponent(CGFloat(blueSlider.value))
//        blueLabelValue.text = String(format: "%.2f", blueSlider.value)
//    }
    
    private func mixColor() {
        mainView.backgroundColor = UIColor (
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    
    // private func slidersSetup() {
    //    redSlider.value = 0
    //    redSlider.minimumValue = 0
    //    redSlider.maximumValue = 1
    
    //    greenSlider.value = 0
    //    greenSlider.minimumValue = 0
    //    greenSlider.maximumValue = 1
    
    //    blueSlider.value = 0
    //  blueSlider.minimumValue = 0
    //blueSlider.maximumValue = 1
    // }
    
}


