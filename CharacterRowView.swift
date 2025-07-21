//
//  CharacterRowView.swift
//  RickAndMortyExplorer
//
//  Created by Zakariya Veasy on 7/20/25.
//

// CharacterRowView.swift
import SwiftUI

struct CharacterRowView: View {
    let character: Character
    var body: some View {
        HStack {
            AsyncImage(url: character.image) { phase in
                if let img = phase.image {
                    img.resizable()
                } else {
                    Color.gray.opacity(0.2)
                }
            }
            .frame(width: 60, height: 60)
            .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.headline)
                Text(character.species)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

