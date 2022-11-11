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
        redLight.layer.cornerRadius = 65
        redLight.alpha = 0.5
        yellowLight.layer.cornerRadius = 65
        yellowLight.alpha = 0.5
        greenLight.layer.cornerRadius = 65
        greenLight.alpha = 0.5
    }

    @IBAction func buttonSwitchPressed(_ sender: UIButton) {
        
    }
    
}

