//
//  ViewController.swift
//  ColorChoose
//
//  Created by Фёдор Назин on 02.02.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    
    @IBOutlet private var colorResult: UIView!
    
    @IBOutlet private var redValue: UILabel!
    @IBOutlet private var blueValue: UILabel!
    @IBOutlet private var greenValue: UILabel!
    
    @IBOutlet private var blueSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var redSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI( )

    }
    // MARK: - IB Actions
    
    @IBAction private func redSliderAction() {
        
        redSlider.minimumTrackTintColor = UIColor(red: CGFloat(redSlider.value), green: 0, blue: 0, alpha: 1)
        
        redValue.text = redSlider.value.formatted()
        
        updateColorResult()
    }
    @IBAction private func greenSliderACtion() {
        
        greenSlider.minimumTrackTintColor = UIColor(red: 0, green: CGFloat(greenSlider.value), blue: 0, alpha: 1)
        
        greenValue.text = greenSlider.value.formatted()
        
        updateColorResult()
    }
    @IBAction private func blueSLiderAction() {
        
        blueSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: CGFloat(blueSlider.value), alpha: 1)
        
        blueValue.text = blueSlider.value.formatted()
        
        updateColorResult()
    }
}
    
    // MARK: Extensions

private extension ViewController {
    
    func setupUI() {
        redSliderAction()
        greenSliderACtion()
        blueSLiderAction()
        
    }
    
    func updateColorResult() {
        colorResult.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}


