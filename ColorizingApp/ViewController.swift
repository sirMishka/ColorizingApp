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
        
        redColorLabel.text = String(format: "%.2f", redColorSlider.value)
        greenColorLabel.text = String(format: "%.2f", greenColorSlider.value)
        blueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
    }

    //MARK: - IBActions
    @IBAction func redSliderAction() {
        redColorLabel.text = String(format: "%.2f", redColorSlider.value)
        mainViewUpdate()
    }
    @IBAction func greenSliderAction() {
        greenColorLabel.text = String(format: "%.2f", greenColorSlider.value)
        mainViewUpdate()
    }
    @IBAction func blueSliderAction() {
        blueColorLabel.text = String(format: "%.2f", blueColorSlider.value)
        mainViewUpdate()
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
}

