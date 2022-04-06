//
//  PokemonImage.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 03/04/22.
//

import Foundation
import SwiftUI

struct PokemonImage: View {
    var imageLink = ""
    @State private var pokemonSprite = ""
    
    var body: some View {
        AsyncImage(url: URL(string: pokemonSprite))
            .frame(width: 75, height: 75)
            .onAppear{
                let loadedData = UserDefaults.standard.string(forKey: imageLink)
                
                if loadedData == nil {
                    getSprite(url: imageLink)
                    UserDefaults.standard.set(imageLink, forKey: imageLink)
                    print("New url, caching ...")
                } else {
                    getSprite(url: loadedData!)
                    print("using cached url ...")
                }
            }
            .clipShape(Circle())
            .foregroundColor(Color.gray.opacity(0.6))
    }
    
    func getSprite(url: String){
        var tempSprite: String?
        
        GetPokeDexEntry().getData(url: url) {sprite in
            tempSprite = sprite.front_default
            self.pokemonSprite = tempSprite ?? "placeholder"
        }
    }
}
