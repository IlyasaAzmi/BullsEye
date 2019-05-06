//
//  ViewController.swift
//  BullsEye
//
//  Created by Ilyasa Azmi on 29/04/19.
//  Copyright © 2019 Ilyasa Azmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        targetValue = Int.random(in: 1...100)
        startNewRound()
    }
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    @IBAction func showAlert(){
        
        let message = "The value of the slider is now: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        
    }
    
    @IBAction func sliderMove(_ slider: UISlider){
        let roundedValue = slider.value.rounded()
        print("The rounde value of slider now: \(roundedValue)")
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
}

