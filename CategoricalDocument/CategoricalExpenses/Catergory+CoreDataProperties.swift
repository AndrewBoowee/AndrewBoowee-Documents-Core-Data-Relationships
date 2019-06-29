//
//  Catergory+CoreDataProperties.swift
//  CategoricalExpenses
//
//  Created by Andrew Boowee on 6/28/19.
//  Copyright © 2019 Shawn Moore. All rights reserved.
//
//

import Foundation
import CoreData


extension Catergory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Catergory> {
        return NSFetchRequest<Catergory>(entityName: "Catergory")
    }

    @NSManaged public var name: String?
    @NSManaged public var documents: NSOrderedSet?

}

// MARK: Generated accessors for documents
extension Catergory {

    @objc(insertObject:inDocumentsAtIndex:)
    @NSManaged public func insertIntoDocuments(_ value: Document, at idx: Int)

    @objc(removeObjectFromDocumentsAtIndex:)
    @NSManaged public func removeFromDocuments(at idx: Int)

    @objc(insertDocuments:atIndexes:)
    @NSManaged public func insertIntoDocuments(_ values: [Document], at indexes: NSIndexSet)

    @objc(removeDocumentsAtIndexes:)
    @NSManaged public func removeFromDocuments(at indexes: NSIndexSet)

    @objc(replaceObjectInDocumentsAtIndex:withObject:)
    @NSManaged public func replaceDocuments(at idx: Int, with value: Document)

    @objc(replaceDocumentsAtIndexes:withDocuments:)
    @NSManaged public func replaceDocuments(at indexes: NSIndexSet, with values: [Document])

    @objc(addDocumentsObject:)
    @NSManaged public func addToDocuments(_ value: Document)

    @objc(removeDocumentsObject:)
    @NSManaged public func removeFromDocuments(_ value: Document)

    @objc(addDocuments:)
    @NSManaged public func addToDocuments(_ values: NSOrderedSet)

    @objc(removeDocuments:)
    @NSManaged public func removeFromDocuments(_ values: NSOrderedSet)

}
