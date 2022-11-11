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
        yellowLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
    }

    @IBAction func buttonSwitchPressed(_ sender: UIButton) {
    }
    
}

