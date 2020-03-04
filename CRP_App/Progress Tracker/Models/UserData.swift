//
//  UserData.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 3/2/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import CoreData


class SessionManagedObject: NSManagedObject {

  @nonobjc public class func fetchRequest() -> NSFetchRequest<Sessions> {
    return NSFetchRequest<Sessions>(entityName: "Sessions")
  }

  @NSManaged var date: String?
  @NSManaged var risk: NSDecimalNumber?

}

class UserData {
    static var userSessions: [NSManagedObject] = []



}
