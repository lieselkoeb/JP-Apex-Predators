//
//  Predators.swift
//  JPApexPredators
//
//  Created by Liesel Matos Koeb on 22/02/26.
//

import Foundation

class Predators {
    var apexPredators: [ApexPredator] = []
    
    init() {
        decodeApexPredatorData()
    }
    
    func decodeApexPredatorData (){
        if let url = Bundle.main.url(forResource: "jpapexpredator", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
            }
            catch {
                print("Error message JSON data: \(error)")
            }
        }
    }
}
