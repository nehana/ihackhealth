//
//  StatsViewController.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 3/2/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class StatisticsViewController: UIViewController {
    //var sessionArray = UserData.userSessions
    var currSession : NSManagedObject!
    var currSessionIndex: Int!

    var gradientScaleImage: UIImageView!
    var titleLabel: UILabel!
    var backButton: UIButton!

    var sessionCollection: UICollectionView!


    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationController?.navigationBar.barTintColor = UIColor.background
//        view.backgroundColor = .purple
//        navigationController?.navigationBar.barTintColor = .purple
        collectionViewSetup()
        uiSetup()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let appDelegate =
            UIApplication.shared.delegate as? AppDelegate else {
                return
        }

        let managedContext =
            appDelegate.persistentContainer.viewContext


        let fetchRequest =
            NSFetchRequest<NSManagedObject>(entityName: "Sessions")

        do {
            UserData.userSessions = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }


}
