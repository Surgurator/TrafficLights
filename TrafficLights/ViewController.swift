//
//  ViewController.swift
//  TrafficLights
//
//  Created by Alexey on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var buttonSwith: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.5
        yellowLight.alpha = 0.5
        greenLight.alpha = 0.5
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redLight.layer.cornerRadius = yellowLight.frame.size.width/2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width/2
        greenLight.layer.cornerRadius = greenLight.frame.size.width/2
    }
    
    @IBAction func buttonSwitchPressed(_ sender: UIButton) {
        
        switch (redLight.alpha, yellowLight.alpha, greenLight.alpha) {
        case (0.5, 0.5, 0.5):
            redLight.alpha = 1
            yellowLight.alpha = 0.5
            greenLight.alpha = 0.5
            buttonSwith.setTitle("Next", for: .normal)
        case (1, 0.5, 0.5):
            redLight.alpha = 0.5
            yellowLight.alpha = 1
            greenLight.alpha = 0.5
        case (0.5, 1, 0.5):
            redLight.alpha = 0.5
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
        case (0.5, 0.5, 1):
            redLight.alpha = 1
            yellowLight.alpha = 0.5
            greenLight.alpha = 0.5
        default:
            print("error")
        }
    }
}
