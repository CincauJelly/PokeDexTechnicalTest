//
//  PokemonController.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 03/04/22.
//

import Foundation

class PokeApi {
    func getData(completion: @escaping ([PokemonData]) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            
            let pokemonList = try! JSONDecoder().decode(Pokemon.self, from: data)
            DispatchQueue.main.async {
                completion(pokemonList.results)
            }
        }.resume()
    }
}

class GetPokeDexEntry {
    func getData(url: String, completion: @escaping (PokemonSprites) -> ()) {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            
            let pokemonSprite = try! JSONDecoder().decode(PokemonDexEntry.self, from: data)
            DispatchQueue.main.async {
                completion(pokemonSprite.sprites)
            }
        }.resume()
    }
}

class GetPokemonDetails {
    func getData(url: String, completion: @escaping (PokeMoves) -> ()) {
        guard let url = URL(string: url) else {return}
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else {return}
            
            let pokemonDetails = try! JSONDecoder().decode(PokeDetail.self, from: data)
            DispatchQueue.main.async {
                completion(pokemonDetails.moves[1])
            }
        }.resume()
    }
}

class GetPokedexDetail {
    func getPokeDexDetail(completion: @escaping ([PokemonDexDetail]) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/bulbasaur/") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            
            let pokedexdetail = try! JSONDecoder().decode(PokemonDexDetail.self, from: data)
            DispatchQueue.main.async {
                completion([pokedexdetail])
            }
        }.resume()
    }

}
