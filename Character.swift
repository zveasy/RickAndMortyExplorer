//
//  Character.swift
//  RickAndMortyExplorer
//
//  Created by Zakariya Veasy on 7/20/25.
//

// Sources/Models/Character.swift
import Foundation

struct Character: Identifiable, Decodable, Hashable {     // ← added Hashable
    let id: Int
    let name: String
    let status: String
    let species: String
    let image: URL
    let origin: Origin
    
    struct Origin: Decodable, Hashable {                  // ← added Hashable
        let name: String
    }
}
