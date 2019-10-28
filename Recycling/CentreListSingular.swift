//
//  CentreListSingular.swift
//  Recycling
//
//  Created by William Alderson on 26/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI

struct CentreListSingular: View {
    var centre: Centres
    var body: some View {
            
        NavigationView{
            ScrollView {
                VStack {
                    
                    Image(centre.imageName)
                    .resizable()
                    .frame(width: 300, height: 300)
                        .shadow(radius: 20)
                        .cornerRadius(20)
                        .padding(.top, 70)
                        .padding(.bottom, 30)
                    Text(centre.name)
                        .font(.title)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                    Text(centre.openingTimes)
                        .font(.body)
                        .fontWeight(.thin)
                        .multilineTextAlignment(.center)
                        .padding(.bottom)
                    MapView(centre: centre)
                        .frame(width: 300, height:300)
                        .cornerRadius(20)
                    .shadow(radius: 20)
                    Text(centre.address)
                        .font(.body)
                        .fontWeight(.thin)
                        .frame(width: 355, height: 50)
                        //.frame(width: 390)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 190)
                        .padding(.top, 30)
                }
                .frame(width: 450)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct CentreListSingular_Previews: PreviewProvider {
    static var previews: some View {
        CentreListSingular(centre: centreData[1])
    }
}

