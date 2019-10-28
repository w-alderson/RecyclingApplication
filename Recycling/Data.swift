//
//  Data.swift
//  Recycling
//
//  Created by William Alderson on 25/10/2019.
//  Copyright © 2019 William Alderson. All rights reserved.
//

import Foundation

//Arrays used throughout the application to access data from json files
let itemData:[Items] = load("ItemInfo.json")
let centreData:[Centres] = load("RecyclingCentresInfo.json")

//reads json files and converts them to readable format
func load<T:Decodable>(_ filename:String, as type:T.Type = T.self)-> T{
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{
            fatalError("Couldn't find \(filename) from main bundle")
    }
    do{
        data = try Data(contentsOf: file)
    }
    catch{
        fatalError("Couldn't find \(filename) from main bundle:\n \(error)")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
