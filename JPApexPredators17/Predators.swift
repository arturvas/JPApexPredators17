//
//  Predators.swift
//  JPApexPredators17
//
//  Created by Artur Vasconcelos on 14/12/24.
//

import Foundation

class Predators {
//    the type will be a collection of apex predators
    var apexPredators: [ApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData() {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            print("JSON file finded: \(url)")
            do {
                let data = try Data(contentsOf: url)
                print("Loaded data with success: \(data.count) bytes")
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
                print("Successfull decode: \(apexPredators.count) predators loaded.")
                
            } catch {
                print("Error decoding JSON data: \(error)")
            }
        } else {
            print("JSON file not found")
        }
    }
}
