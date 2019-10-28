//
//  ContentView.swift
//  Recycling
//
//  Created by William Alderson on 25/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            ItemsList()
                .tabItem {
                    Image(systemName: "cube.box.fill")
                    Text("Items")
                }.tag(0)
                CentreList(centres: centreData)
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Centres")
                }.tag(1)
        
            }
        }
        
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
