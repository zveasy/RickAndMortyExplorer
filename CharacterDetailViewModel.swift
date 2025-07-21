//
//  CharacterDetailViewModel.swift
//  RickAndMortyExplorer
//
//  Created by Zakariya Veasy on 7/20/25.
//

// CharacterDetailViewModel.swift
import Foundation

@MainActor
final class CharacterDetailViewModel: ObservableObject {
    @Published var character: Character
    init(character: Character) { self.character = character }
}

