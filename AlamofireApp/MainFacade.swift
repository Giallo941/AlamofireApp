//
//  MainFacade.swift
//  AlamofireApp
//
//  Created by Gianmarco Cotellessa on 17/04/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import Foundation

class MainFacade {
    
    private let networkClient = NetworkClient()

    func dataUser(completion: @escaping (Int?, String?) -> Void) {
        networkClient.data { (responseDictionary, error) in
            guard responseDictionary != nil else {
                completion(nil, error)
                return
            }
            //example if there is an id
            let userIds = responseDictionary?.object(forKey: "array")! as? [Int] ?? []
            completion(userIds[0], nil)
        }
    }
    
}
