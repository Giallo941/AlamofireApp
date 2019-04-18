//
//  User.swift
//  AlamofireApp
//
//  Created by Gianmarco Cotellessa on 18/04/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import Foundation

struct User {
    var array: [Int]
    
    init(_ dictionary: [String: Any]) {
        self.array = dictionary["array"] as? [Int] ?? []
    }
}
