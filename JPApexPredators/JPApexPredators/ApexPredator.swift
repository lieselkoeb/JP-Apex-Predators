//
//  ApexPredator.swift
//  JPApexPredators
//
//  Created by Liesel Matos Koeb on 18/02/26.
//
import SwiftUI

struct ApexPredator: Decodable, Identifiable {
    let id: Int
    let name: String
    let type: APType
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScenes]
    let link: String
    
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "" )
    }
    
    struct MovieScenes: Decodable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
    
    enum APType: String, Decodable {
        case land
        case air
        case sea
        
        var background: Color {
            switch self {
            case .land:
                .brown
            case .air:
                .teal
            case .sea:
                .blue
            }
        }
    }
}
 
