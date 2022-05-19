//
//  CustomPlaces.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 12/05/22.
//

import UIKit
import MapKit

struct teste{
    init() {
        arrayOfPlaces.append(contentsOf: [londres, oslo, paris, rome, washington])
    }
}

var arrayOfImages: [ImageCapital] = [ImageCapital]()
var arrayOfPlaces: [CapitalPlaces] = [CapitalPlaces]()

let londres: CapitalPlaces = {
    let londres = CapitalPlaces(title: "London", coordinate: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275))
    return londres
}()

let oslo: CapitalPlaces = {
    let oslo = CapitalPlaces(title: "Oslo", coordinate: CLLocationCoordinate2D(latitude: 59.95, longitude: 10.75))
    return oslo
}()

let paris: CapitalPlaces = {
    let paris = CapitalPlaces(title: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508))
    return paris
}()

let rome: CapitalPlaces = {
    let rome = CapitalPlaces(title: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5))
    return rome
}()

let washington: CapitalPlaces = {
    let washington = CapitalPlaces(title: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667))
    return washington
}()
