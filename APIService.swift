//
//  APIService.swift
//  RickAndMortyExplorer
//
//  Created by Zakariya Veasy on 7/20/25.
//

// Sources/Network/APIService.swift
import Foundation

enum APIError: Error { case invalidURL, badResponse }

final class APIService {
    static let shared = APIService()
    private init() { }
    
    func fetchCharacters() async throws -> [Character] {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
            throw APIError.invalidURL
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw APIError.badResponse
        }
        let page = try JSONDecoder().decode(Page.self, from: data)
        return page.results
    }
}

// Pagination wrapper
private struct Page: Decodable { let results: [Character] }
