//
//  Place.swift
//  Learn
//
//  Created by Mohammad Azam on 8/14/22.
//

import Foundation

struct Place: Hashable {
    let name: String
    let photo: String
    let isFeatured: Bool
}

extension Place {
    
    static func all() -> [Place] {
        return [Place(name: "Denver", photo: "denver", isFeatured: true), Place(name: "Houston", photo: "houston", isFeatured: true), Place(name: "Seattle", photo: "seattle", isFeatured: false), Place(name: "New York", photo: "newyork", isFeatured: false)]
    }
}

extension Place {
    
    static var preview: Place {
        Place(name: "Denver", photo: "denver", isFeatured: true)
    }
    
}
