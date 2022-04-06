//
//  MainView.swift
//  PokeDexTechnicalPest
//
//  Created by Shiddiq Syuhada on 03/04/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            PokeDexView()
                .tabItem{Label("PokeDex", systemImage:"list.dash")}
            MyPokemonView()
                .tabItem{Label("My Pokemon", systemImage: "square.and.pencil")}
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
