//
//  APIEntities.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 18/05/22.
//

import UIKit


struct ImageCell{
    var image: UIImageView
}

struct Results: Codable{
    let image: [ImageResults]
}

struct ImageResults: Codable{
    let url: String
    
    enum CodingKeys: String, CodingKey {
        case url = "murl"
    }
                    
    
}

