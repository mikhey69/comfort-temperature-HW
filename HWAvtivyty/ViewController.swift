//
//  ViewController.swift
//  HWAvtivyty
//
//  Created by mikhey on 30.05.2018.
//  Copyright © 2018 mikhey. All rights reserved.
//

import UIKit
import Darwin

//

var textix = "hi"

class ViewController: UIViewController {
    
    
    @IBOutlet weak var feelLikeLabel: UILabel!
    
    @IBOutlet weak var temperatureSliderBar: UISlider!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var windSpeedSliderBar: UISlider!
    
    @IBOutlet weak var windSpeedLabel: UILabel!
    
    @IBOutlet weak var humiditySliderBar: UISlider!
    
    @IBOutlet weak var humidityLabel: UILabel!
    
    @IBOutlet weak var setWhetherButtonOut: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - buttons
        
        //temperature
        
        setWhetherButtonOut.layer.cornerRadius = 10
        setWhetherButtonOut.layer.borderWidth = 1
        setWhetherButtonOut.layer.borderColor = (UIColor.purple).cgColor
        setWhetherButtonOut.clipsToBounds = true
        
        //MARK: - sliders
        
        //temperature
        
        temperatureSliderBar.minimumValue = -50
        temperatureSliderBar.maximumValue = +50
        temperatureSliderBar.tintColor = UIColor.red
        
        //wind speed
        
        windSpeedSliderBar.minimumValue = 0
        windSpeedSliderBar.maximumValue = 20
        windSpeedSliderBar.tintColor = UIColor.green
        
        //humidity
        
        humiditySliderBar.minimumValue = 0
        humiditySliderBar.maximumValue = 100
        humiditySliderBar.tintColor = UIColor.blue
        
    }
    
    func feelLikeWhether() {
        
        
        let part1e = (self.humiditySliderBar.value/100) * 6.105
        let part2e = (17.7 * self.temperatureSliderBar.value)/(237.7 + self.temperatureSliderBar.value)
        let part3e = powf(2.71828, part2e)
        let e = part1e * part3e
        let part1 = self.temperatureSliderBar.value + 0.33 * e
        let part2 = 0.7 * self.windSpeedSliderBar.value
        let feelLikeValue =  Double(part1 - part2 - 4)
        
        feelLikeLabel.text =  String(feelLikeValue) + "!!!"
        
        //MARK: - Method
        
        
    }
    
    
    @IBAction func temperatureSlider(_ sender: Any) {
        self.temperatureLabel.text =  String(Int(self.temperatureSliderBar.value)) + " C`"
        feelLikeWhether()
    }
    
    
    @IBAction func windSpeedSlider(_ sender: Any) {
        self.windSpeedLabel.text = String(Int(self.windSpeedSliderBar.value)) + " m/s"
        feelLikeWhether()
    }
    
    @IBAction func humiditySlider(_ sender: Any) {
        self.humidityLabel.text = String(Int(self.humiditySliderBar.value)) + "%"
        feelLikeWhether()
    }
    
}
