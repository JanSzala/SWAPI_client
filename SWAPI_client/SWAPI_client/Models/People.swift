//
//  People.swift
//  SWAPI_client
//
//  Created by JanSzala on 20/01/2019.
//  Copyright © 2019 JanSzala. All rights reserved.
//

class People: Decodable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [Person]?
    
    init(json: [String: Any]) {
         count = json["count"] as? Int ?? 0
         next = json["next"] as? String ?? nil
         previous = json["previous"] as? String ?? nil
         results = json["results"] as? [Person] ?? nil
    }
}
