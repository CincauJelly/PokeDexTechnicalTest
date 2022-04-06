//
//  PokemonApiRequest.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 02/04/22.
//
// https://pokeapi.co/api/v2/pokemon?limit=151

import Foundation

struct Pokemon: Codable {
    var results: [PokemonData]
}

struct PokemonData: Codable, Identifiable {
    let id = UUID()
    var name: String
    var url: String
}
