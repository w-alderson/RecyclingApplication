//
//  Items.swift
//  Recycling
//
//  Created by William Alderson on 25/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import Foundation

struct Items: Hashable, Identifiable, Codable {
    
    var id: Int
    var name: String
    var isRecyclable: Bool
    var category: String
    var description: String
    var recycleWith: String
    var imageName: String

}
