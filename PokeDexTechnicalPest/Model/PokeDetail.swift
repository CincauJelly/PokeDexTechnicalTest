//
//  PokeDetail.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 03/04/22.
//

import Foundation

struct PokeDetail: Codable {
    var moves: [PokeMoves]
    var name: String
    var order: Int
    var types: [PokeType]
}

struct PokeMoves: Codable, Identifiable {
    let id = UUID()
    var move: Move
}

struct Move: Codable {
    var name: String
    var url: String
}

struct PokeType: Codable {
    var slot: Int
    var type: TypeName
}
struct TypeName: Codable {
    var name: String
    var url: String
}
