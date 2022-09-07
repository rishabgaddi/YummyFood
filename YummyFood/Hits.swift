//
//  Hits.swift
//  YummyFood
//
//  Created by Rishab Gaddi on 27/06/2022.
//

import Foundation

class Hits: Decodable {
    var recipe: Recipe
    
    init(recipe: Recipe) {
        self.recipe = recipe
    }
}
