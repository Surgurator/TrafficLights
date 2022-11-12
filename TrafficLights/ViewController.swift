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

    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        redLight.layer.cornerRadius = yellowLight.frame.size.width/2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width/2
        greenLight.layer.cornerRadius = greenLight.frame.size.width/2
    }
    @IBAction func buttonSwitchPressed(_ sender: UIButton) {
        if greenLight.alpha == 1{
            redLight.alpha = 1
            yellowLight.alpha = 0.5
            greenLight.alpha = 0.5
        } else if redLight.alpha == 1{
            redLight.alpha = 0.5
            yellowLight.alpha = 1
            greenLight.alpha = 0.5
        } else if yellowLight.alpha == 1{
            redLight.alpha = 0.5
            yellowLight.alpha = 0.5
            greenLight.alpha = 1
        }
    }
}
