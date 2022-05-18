//
//  APIEntities.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 18/05/22.
//

import UIKit




struct results: Codable{
    let image: [imageResults]
}

struct imageResults: Codable{
    let thumb: String
}

