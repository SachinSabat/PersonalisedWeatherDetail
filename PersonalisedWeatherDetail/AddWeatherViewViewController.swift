//
//  AddWeatherViewViewController.swift
//  PersonalisedWeatherDetail
//
//  Created by Sachin Sabat on 23/03/21.
//

import UIKit

class AddWeatherViewViewController: UIViewController {

    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
