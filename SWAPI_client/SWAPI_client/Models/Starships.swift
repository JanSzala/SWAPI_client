//
//  Starships.swift
//  SWAPI_client
//
//  Created by JanSzala on 02/02/2019.
//  Copyright © 2019 JanSzala. All rights reserved.
//

internal class Starships: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [Starship]?
    
    init(json: [String: Any]) {
        count = json["count"] as? Int ?? 0
        next = json["next"] as? String
        previous = json["previous"] as? String
        results = json["results"] as? [Starship]
    }
}