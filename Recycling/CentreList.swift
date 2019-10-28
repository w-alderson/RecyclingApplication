//
//  CentreList.swift
//  Recycling
//
//  Created by William Alderson on 26/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI

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
                        //.foregroundColor(Color.white)
                        //Text("Starten")
                        //.frame(width: 350, height:150, alignment: .center)
                        //.background(Color.green)
                        //.cornerRadius(40)
                            .multilineTextAlignment(.leading)
                            .frame(height:165)
                        //.foregroundColor(Color.red)
                        //Spacer()
                    }
                }
                .padding()
                
            }
            .navigationBarTitle(Text("Nearby Centres"))
            //.edgesIgnoringSafeArea(.top)
        }
    }
}
        
        //CentreListSingular(centre: centres.second!)
        //CentreListSingular(centre: centres[2])
        
   // }
        //NavigationView{
        //    ScrollView(.horizontal){
                //HStack{
        //        HStack{
        //            Text("Test")
         //               .frame(width: 300)
        //            CentreListSingular(centre: centreData[0])
        //                .frame(width:400)
               // }
                    //ForEach(centreData) { centres in
                    //    //ItemView(item: items)
                    //    CentreListSingular(centre: centres)
                    //    }
                    //}
                    //ForEach(itemData) { items in
                    //    //ItemView(item: items)
                    //    ItemListSingular(item: items)
                    //  }
                    //}
                //HStack{
                //    ForEach(centreData){ centres in
                //        CentreListSingular(centre: centres)
                //            .frame(width: 500, height: 600)
                //        }
                //}
            //}
        //}
       //     .navigationBarTitle("Recycling Centres")
        //}
    //}
//}


    

struct CentreList_Previews: PreviewProvider {
    static var previews: some View {
        CentreList(centres: centreData)
    }
}
