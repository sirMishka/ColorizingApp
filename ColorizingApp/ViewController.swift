//
//  ViewController.swift
//  ColorizingApp
//
//  Created by Mikhail Stepanov on 30.06.2025.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    //MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 10
        mainViewUpdate()
        
        setValue(for: redColorLabel, greenColorLabel,blueColorLabel)
    }

    //MARK: - IBActions
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        mainViewUpdate()
        
        switch sender {
        case redColorSlider:
            redColorLabel.text = string(from: redColorSlider)
        case greenColorSlider:
            greenColorLabel.text = string(from: greenColorSlider)
        default:
            blueColorLabel.text = string(from: blueColorSlider)
        }
    }
    
    
    // MARK: - Private methods
    private func mainViewUpdate() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redColorLabel:
                label.text = string(from: redColorSlider)
            case greenColorLabel:
                label.text = string(from: greenColorSlider)
            default:
                label.text = string(from: blueColorSlider)
            }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

