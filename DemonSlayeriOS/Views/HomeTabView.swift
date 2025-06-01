//
//  HomeTabView.swift
//  DemonSlayeriOS
//
//  Created by Adam Muhammad on 02/06/2025.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            CharacterView()
                .tabItem {
                    Label("Character", systemImage: "person.fill")
                }
            CombatView()
                .tabItem {
                    Label("Combat", systemImage: "flame")
                }
        }
    }
}

#Preview {
    HomeTabView()
}
