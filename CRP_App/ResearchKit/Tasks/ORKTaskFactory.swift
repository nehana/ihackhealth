//
//  ORKTaskFactory.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 3/2/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import ResearchKit

protocol ORKTaskFactory {
    func makeTask() -> ORKTask
}
