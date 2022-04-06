//
//  MyPokemonView.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 03/04/22.
//

import SwiftUI

struct MyPokemonView: View {
    @State var pokedexdetail = [PokemonDexDetail]()
    var body: some View {
        VStack{
            Text("My Pokemon")
        }.onAppear {
            GetPokedexDetail().getPokeDexDetail() { detail in
                self.pokedexdetail = detail
            }
        }
    }
}

struct MyPokemonView_Previews: PreviewProvider {
    static var previews: some View {
        MyPokemonView()
    }
}
