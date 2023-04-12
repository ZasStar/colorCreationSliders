//
//  ViewController.swift
//  colorCreationSliders
//
//  Created by Александр Захлыпа on 25.03.2023.
//

import UIKit

final class SettingViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet var doneButton: UIButton!
    
    @IBOutlet weak var redLabelValue: UILabel!
    @IBOutlet weak var blueLabelValue: UILabel!
    @IBOutlet weak var greenLabelValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var colorDelegate: SettingViewControllerdelegate!
    var backgroundColorDelegate: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mainView.layer.cornerRadius = 15
        doneButton.layer.cornerRadius = 10
        
        mainView.backgroundColor = backgroundColorDelegate
        
        
        
        getColor(for: redSlider, greenSlider, blueSlider)


        
        mixColor()

        redLabelValue.text = string(from: redSlider)
        greenLabelValue.text = string(from: greenSlider)
        blueLabelValue.text = string(from: blueSlider)
    }
    
    @IBAction func doneButtonPressed() {
        colorDelegate.sentColor(color: mainView.backgroundColor ?? .brown)
        dismiss(animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func sliderAction() {
        mixColor()
        redLabelValue.text = string(from: redSlider)
        greenLabelValue.text = string(from: greenSlider)
        blueLabelValue.text = string(from: blueSlider)
    }


    
    private func mixColor() {
        mainView.backgroundColor = UIColor (
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func getColor(for sliders: UISlider...) {
        let color = CIColor(color: mainView.backgroundColor ?? .clear)
        sliders.forEach { slider in
            switch slider {
            case redSlider: redSlider.value = Float(color.red)
            case greenSlider: greenSlider.value = Float(color.green)
            default: blueSlider.value = Float(color.blue)
            }
        }
    }
    

    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
   
    
}


