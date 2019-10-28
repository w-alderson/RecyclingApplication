//
//  ItemView.swift
//  Recycling
//
//  Created by William Alderson on 25/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI

//View for info about items
struct ItemView: View {
    
    var item: Items
    var body: some View {
        ScrollView {
            VStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(.top)
                    .frame(height: 235)
                Text(item.name)
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.top)
                Text(item.category)
                    .fontWeight(.thin)
                    .padding(.bottom)
                //Makes it clear items cannot be recycled
                if(!item.isRecyclable){
                    Text("THIS ITEM IS NOT RECYCLABLE.\n DO NOT PLACE IN RECYCLING BIN")
                        .font(.largeTitle)
                        .fontWeight(.light)
                        .foregroundColor(Color.red)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                Text(item.description)
                    .font(.body)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                .padding(.horizontal)
                Text("Recycle with:").padding(.vertical)
                Text(item.recycleWith)
            }
        
        }
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: itemData[0])
    }
}
