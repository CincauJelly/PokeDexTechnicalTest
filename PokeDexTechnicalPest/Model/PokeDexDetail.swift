//
//  PokemonDetail.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 06/04/22.
//

import Foundation

struct PokemonDexDetail: Codable {
    struct PAbilities: Codable {
        let ability: [PAbility]
        let slot: Int
    }
    struct PAbility: Codable {
        let name: String
        let url: String
    }
    struct PMoves: Codable {
        let move: PMove
    }
    struct PMove: Codable {
        let name: String
        let url: String
    }
    struct PTypes: Codable {
        let slot: Int
        let type:  PType
    }
    struct PType: Codable {
        let name: String
        let url: String
    }
    
    let abilities: [PAbilities]
    let height: Int
    let moves: [PMoves]
    let name: String
    let types: [PTypes]
}

