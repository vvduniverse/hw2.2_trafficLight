//
//  ViewController.swift
//  hw2.2_trafficLight
//
//  Created by Tato Admin on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redColorLight: UIButton!
    
    @IBOutlet weak var yellowColorLight: UIButton!
    
    
    @IBOutlet weak var greenColorLight: UIButton!
    
    
    @IBOutlet weak var startNextButtonProperty: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColorLight.alpha = 0.3
        redColorLight.layer.cornerRadius = 65
        yellowColorLight.alpha = 0.3
        yellowColorLight.layer.cornerRadius = 65
        greenColorLight.alpha = 0.3
        greenColorLight.layer.cornerRadius = 65
        startNextButtonProperty.layer.cornerRadius = 15
    }

    @IBAction func startNextButtonPressed() {
        startNextButtonProperty.setTitle("NEXT", for: .normal)
    }
    
}

