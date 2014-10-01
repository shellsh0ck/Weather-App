//
//  ViewController.swift
//  Weather App
//
//  Created by Vitaly Sulimov on 2014-10-01.
//  Copyright (c) 2014 Vitaly Sulimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let apiKey = "4f85c37e7bdc7fc1af8cbd49f1e501b2"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/")
        let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)
        
        let weatherData = NSData.dataWithContentsOfURL(forecastURL, options: nil, error: nil)
        println(weatherData)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

