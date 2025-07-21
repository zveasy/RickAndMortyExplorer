//
//   CharacterListViewModel.swift
//  RickAndMortyExplorer
//
//  Created by Zakariya Veasy on 7/20/25.
//

// CharacterListViewModel.swift
import Foundation

@MainActor
final class CharacterListViewModel: ObservableObject {
    @Published var characters: [Character] = []
    @Published var isLoading = false
    @Published var alert: String?
    
    func load() async {
        isLoading = true
        do   { characters = try await APIService.shared.fetchCharacters() }
        catch { alert = error.localizedDescription }
        isLoading = false
    }
}
