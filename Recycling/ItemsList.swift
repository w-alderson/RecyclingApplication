//
//  ItemsList.swift
//  Recycling
//
//  Created by William Alderson on 25/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI

//View for all items
struct ItemsList: View {
    var body: some View {
        
        NavigationView{
            List(itemData) { items in
                NavigationLink(destination: ItemView(item: items)) {
                    ItemListSingular(item: items)
                }
            }
            .navigationBarTitle(Text("Items"))
        }
    }
}

struct ItemsList_Previews: PreviewProvider {
    static var previews: some View {
        ItemsList()
    }
}
