//
//  Document+CoreDataClass.swift
//  CategoricalExpenses
//
//  Created by Andrew Boowee on 6/28/19.
//  Copyright © 2019 Shawn Moore. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Document)
public class Document: NSManagedObject {

    var modedDate: Date?
    {
        get
        {
            return date as Date?
        }
        set
        {
            date = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, content: String?, catergory: Category)
    {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext,
        let name = name, name != ""
        else
        {
            return nil
        }
        self.init(entity: Document.entity(), insertInto: managedContext)
        self.name = name
        self.content = content
        if let size = content?.count
        {
            self.size = Int64(size)
        }
        else
        {
            self.size = 0
        }
        self.modedDate = Date(timeIntervalSinceNow: 0)
//        self.catergory = catergory
    }
    
    func update(name: String, content: String?, catergory: Category)
    {
        self.name = name
        self.content = content
        if let size = content?.count
        {
            self.size = Int64(size)
        }
        else
        {
            self.size = 0
        }
        self.modedDate = Date(timeIntervalSinceNow: 0)
  //      self.catergory = catergory
    }
    
    
}
