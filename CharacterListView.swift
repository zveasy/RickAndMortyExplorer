//
//  CharacterListView.swift
//  RickAndMortyExplorer
//
//  Created by Zakariya Veasy on 7/20/25.
//

// CharacterListView.swift
import SwiftUI

struct CharacterListView: View {
    @StateObject private var vm = CharacterListViewModel()
    
    var body: some View {
        NavigationStack {
            List(vm.characters) { character in
                NavigationLink(value: character) {
                    CharacterRowView(character: character)
                }
            }
            .navigationDestination(for: Character.self) { char in
                CharacterDetailView(vm: .init(character: char))
            }
            .navigationTitle("Rick & Morty")
            .task { await vm.load() }
            .overlay {
                if vm.isLoading { ProgressView() }
            }
            .alert("Error", isPresented: .constant(vm.alert != nil)) {
                Button("OK") { vm.alert = nil }
            } message: {
                Text(vm.alert ?? "")
            }
        }
    }
}
