//
//  MapView.swift
//  Recycling
//
//  Created by William Alderson on 27/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI
import MapKit

//Gnerates map based on coordinates in Centre.json and adds a pin with name and address
struct MapView: UIViewRepresentable {
    var centre: Centres
    
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context)
   
    {
        
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: centre.latitude, longitude: centre.longitude), span: span)
        view.setRegion(region, animated: true)
        
         let annotation = MKPointAnnotation()
         annotation.coordinate = CLLocationCoordinate2D(latitude: centre.latitude, longitude: centre.longitude)

        annotation.title = centre.name
        annotation.subtitle = centre.address
         view.addAnnotation(annotation)
            
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(centre: centreData[0])
    }
}
