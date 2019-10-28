//
//  ItemListSingular.swift
//  Recycling
//
//  Created by William Alderson on 25/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI

//View for single item in itemList
struct ItemListSingular: View {
    
    var item: Items
    
    var body: some View {
        
        HStack {
            if(item.isRecyclable){
                Image("Tick")
                .resizable()
                .frame(width: 35, height: 35)
                .cornerRadius(35)
                .shadow(radius: 10)
            }
            else{
                Image("Cross")
                .resizable()
                .frame(width: 35, height: 35)
                .cornerRadius(35)
                .shadow(radius: 10)
            }
            VStack(alignment: .leading) {
                Text(item.name)
                    .fontWeight(.thin)
                Text(item.category)
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.gray)
            }
        }
        }
}

struct ItemListSingular_Previews: PreviewProvider {
    static var previews: some View {
        ItemListSingular(item: itemData[0])
    }
}
