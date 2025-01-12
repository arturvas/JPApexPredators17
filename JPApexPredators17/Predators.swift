//
//  Predators.swift
//  JPApexPredators17
//
//  Created by Artur Vasconcelos on 14/12/24.
//

import Foundation

class Predators {
    var allApexPredators: [ApexPredator] = []
    
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
                allApexPredators = try decoder.decode([ApexPredator].self, from: data)
                print("Successfull decode: \(allApexPredators.count) predators loaded.")
                apexPredators = allApexPredators
                print("Apex Predators populated \(apexPredators.count) predators")
            } catch {
                print("Error decoding JSON data: \(error)")
            }
        } else {
            print("JSON file not found")
        }
    }
    
    func search(for searchTerm: String) -> [ApexPredator] {
        if searchTerm.isEmpty {
            return apexPredators
        } else {
            return apexPredators.filter { predator in
                predator.name.localizedCaseInsensitiveContains(searchTerm)
            }
        }
    }
    
    func sort(by alphabetical: Bool){
        apexPredators.sort { predator1, predator2 in
            alphabetical ? predator1.name < predator2.name : predator2.id < predator1.id
        }
    }
    
    func filter(by type: APType) {
        if type == .all {
            apexPredators = allApexPredators
        } else {
            apexPredators = allApexPredators.filter { predator in
                predator.type == type
            }
        }
    }
}
