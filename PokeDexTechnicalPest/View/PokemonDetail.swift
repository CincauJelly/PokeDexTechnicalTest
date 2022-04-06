//
//  PokemonDetail.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 03/04/22.
//

import SwiftUI

struct PokemonDetail: View {
    @State var pokemonMoves = [PokeMoves]()
    var pokedetail = ""
    
    var body: some View {
        List {
            ForEach(pokemonMoves) { moves in
                Text(moves.move.name)
            }
        }
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail()
    }
}
