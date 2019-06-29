//
//  Catergory+CoreDataClass.swift
//  CategoricalExpenses
//
//  Created by Andrew Boowee on 6/28/19.
//  Copyright © 2019 Shawn Moore. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Catergory)
public class Catergory: NSManagedObject {
    
    convenience init?(name: String?)
    {
            let appDelegate = UIApplication.shared.delegate as? AppDelegate
            guard let managedContext = appDelegate?.persistentContainer.viewContext,
            let name = name, name != ""
            else
            {
                return nil
            }
        self.init(entity: Category.entity, insertInto: managedContext)
        self.name = name
    }
}
