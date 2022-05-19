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
    
    init(title: String, coordinate: CLLocationCoordinate2D){
        self.title = title
        self.coordinate = coordinate
    }
}

class ImageCapital{
    var image: UIImageView
    
    init(image: UIImageView) {
        self.image = image
    }
}




struct Capital{
    var title: String?
    var latitude: Double?
    var longitude: Double?
}
