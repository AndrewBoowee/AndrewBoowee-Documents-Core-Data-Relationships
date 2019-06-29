//
//  Document+CoreDataProperties.swift
//  CategoricalExpenses
//
//  Created by Andrew Boowee on 6/28/19.
//  Copyright © 2019 Shawn Moore. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var size: Int64
    @NSManaged public var content: String?
    @NSManaged public var name: String?
    @NSManaged public var date: NSDate?
    @NSManaged public var catergory: Catergory?

}
