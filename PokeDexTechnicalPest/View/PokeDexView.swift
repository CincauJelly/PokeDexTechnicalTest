//
//  PokeDexView.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 03/04/22.
//

import SwiftUI

struct PokeDexView: View {
    @State var pokemon = [PokemonData]()
    @State var search = ""
    
    var body: some View {
        NavigationView {
            List {
                ForEach(search == "" ? pokemon: pokemon.filter({
                    $0.name.contains(search.lowercased())
                })) {entry in
                    HStack{
                        PokemonImage(imageLink: "\(entry.url)")
                            .padding(.trailing, 20)
                        NavigationLink("\(entry.name)".capitalized, destination: Text("Detail view for  \(entry.name)"))
                    }
                }
                
            }
            .onAppear {
                PokeApi().getData() { pokemon in
                    self.pokemon = pokemon
                }
            }
            .searchable(text: $search)
            .navigationTitle("PokedexUI")
        }
    }
}

struct PokeDexView_Previews: PreviewProvider {
    static var previews: some View {
        PokeDexView()
    }
}
