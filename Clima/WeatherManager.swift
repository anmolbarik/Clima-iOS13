//
//  WeatherManager.swift
//  Clima
//
//  Created by Anmol Barik on 23/06/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

let url = "https://api.openweathermap.org/data/2.5/weather?q=PURI&appid=fbe2a90982f29bb6c1196207eddf1ee6"

func getWeather(urlString: String){
    if let url = URL(string: urlString){
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url, completionHandler: handler(data: response: error:))
        task.resume()
    }
}

func handler(data: Data?, response: URLResponse?, error: Error?){
    if error != nil{
        print(error!)
        return
    }
    if let safeData = data {
        let dataString = String(data: safeData, encoding: .utf8)
        print(dataString!)
    }
}
