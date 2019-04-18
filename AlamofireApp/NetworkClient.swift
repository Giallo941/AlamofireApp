//
//  NetworkClient.swift
//  AlamofireApp
//
//  Created by Gianmarco Cotellessa on 17/04/2019.
//  Copyright © 2019 Gianmarco Cotellessa. All rights reserved.
//

import Foundation
import Alamofire

class NetworkClient {
    
    struct Const {
        static let path: String = "https://jsonblob.com/api/jsonBlob/12d482d0-6122-11e9-b19d-f5e25e2116e3"
    }

    // GET Request with Alamofire framework example.
    
    func data(completion: @escaping (NSDictionary?, String?) -> Void) {
        Alamofire.request(Const.path).responseJSON  { response in
            switch response.result {
            case .failure(let error):
                print(error)
                if let data = response.data, let responseString = String(data: data, encoding: .utf8) {
                    completion(nil, responseString)
                }
            case .success(let responseObject):
                let response = responseObject as! NSDictionary
                completion(response, nil)
            }
        }
    }

}


