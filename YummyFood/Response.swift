//
//  Response.swift
//  YummyFood
//
//  Created by Rishab Gaddi on 27/06/2022.
//

import Foundation

class Response: Decodable {
    var count: Int
    var hits: [Hits]
    
    init(count: Int, hits: [Hits]) {
        self.count = count
        self.hits = hits
    }
}
