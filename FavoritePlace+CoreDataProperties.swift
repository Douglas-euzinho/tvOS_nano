//
//  FavoritePlace+CoreDataProperties.swift
//  tvOS_nano
//
//  Created by Douglas Figueirôa on 19/05/22.
//
//

import Foundation
import CoreData


extension FavoritePlace {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FavoritePlace> {
        return NSFetchRequest<FavoritePlace>(entityName: "FavoritePlace")
    }

    @NSManaged public var name: String?
    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var image: Data?

}

extension FavoritePlace : Identifiable {

}
