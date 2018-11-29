//
//  Species.swift
//  SWAPI_client
//
//  Created by JanSzala on 02/02/2019.
//  Copyright © 2019 JanSzala. All rights reserved.
//

class Species: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [Kind]?
    
    init(json: [String: Any]) {
        count = json["count"] as? Int ?? 0
        next = json["next"] as? String ?? nil
        previous = json["previous"] as? String ?? nil
        results = json["results"] as? [Kind] ?? nil
    }
}
