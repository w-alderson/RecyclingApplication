//
//  Centres.swift
//  Recycling
//
//  Created by William Alderson on 25/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import SwiftUI

struct Centres: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var openingTimes: String
    var types: String
    var address: String
    var imageName: String
    var longitude: Double
    var latitude: Double

}
