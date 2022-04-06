//
//  PokeDexEntry.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 02/04/22.
//

import Foundation

struct PokemonDexEntry: Codable {
    var sprites: PokemonSprites
    var weight: Int
}

struct PokemonSprites: Codable {
    var front_default: String?
}

