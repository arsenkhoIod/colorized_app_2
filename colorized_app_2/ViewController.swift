//
//  ViewController.swift
//  colorized_app_2
//
//  Created by mac on 04.08.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        setColor()
        
        setValue(for: redLabel, greenLabel, blueLabel)
    }
    
    
    @IBAction func sliderColorView(_ sender: UISlider) {
        
        setColor()
        
        setValue(for: redLabel, greenLabel, blueLabel)
        
    }
        
    private func string(from slider: UISlider) -> String{
        String(format: "%.2f", slider.value)
    }
            

    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        for label in labels {
            switch label{
            case redLabel:
                redLabel.text = string(from: redSlider)
            case greenLabel:
                greenLabel.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
            }
        }
    }
    
}

