//
//  CentreList.swift
//  Recycling
//
//  Created by William Alderson on 26/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI

//View for the list of centres
struct CentreList: View {
    
    var centres: [Centres]
    
    var body: some View {
        
    
        NavigationView{
            VStack {
                List(centres) { centre in
                    NavigationLink(destination: CentreListSingular(centre: centre)){
                        //Spacer()
                        Text(centre.name)
                        .font(.title)
                        .fontWeight(.ultraLight)
                        .multilineTextAlignment(.leading)
                        .frame(height:165)
                    }
                }
                .padding()
                
            }
            .navigationBarTitle(Text("Nearby Centres"))
        }
    }
}

    

struct CentreList_Previews: PreviewProvider {
    static var previews: some View {
        CentreList(centres: centreData)
    }
}
