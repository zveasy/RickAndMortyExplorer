//
//  CharacterDetailView.swift
//  RickAndMortyExplorer
//
//  Created by Zakariya Veasy on 7/20/25.
//

// CharacterDetailView.swift
import SwiftUI

struct CharacterDetailView: View {
    @ObservedObject var vm: CharacterDetailViewModel

    var body: some View {
        VStack(spacing: 20) {
            AsyncImage(
                url: vm.character.image,
                content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .shadow(radius: 5)
                },
                placeholder: { ProgressView() }
            )
            .padding()

            Text(vm.character.name)
                .font(.largeTitle).bold()
            Text("Status: \(vm.character.status)")
            Text("Origin: \(vm.character.origin.name)")
            Spacer()
        }
        .padding()
        .navigationTitle(vm.character.name)
    }
}
