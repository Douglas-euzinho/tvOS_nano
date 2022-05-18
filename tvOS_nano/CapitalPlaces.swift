//
//  CapitalPlaces.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 12/05/22.
//

import UIKit
import MapKit

class CapitalPlaces: NSObject, MKAnnotation{
    
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String?
    
    init(title: String, coordinate: CLLocationCoordinate2D, info: String){
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
}




struct Capital{
    var title: String?
    var latitude: Double?
    var longitude: Double?
    var info: String?
}
