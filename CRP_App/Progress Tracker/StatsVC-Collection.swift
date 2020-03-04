//
//  StatsVC-Collection.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 3/2/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit

extension StatisticsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return UserData.userSessions.count // need to change to how many sessions
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 5 , height: collectionView.frame.width / 5)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sessionCell", for: indexPath) as! StatisticsCollectionCell
        cell.awakeFromNib()
        let currSession = UserData.userSessions[indexPath.item]
//        let curr
        let riskScore = currSession.value(forKeyPath: "riskScore") as? Double
        print(riskScore)
//        let BPostureCount = currSession.value(forKeyPath: "badPostureCount") as? Double
//        let TPostureCount = currSession.value(forKeyPath: "totalPostureCount") as? Double
//        let cellScore = 1 - (BPostureCount! / TPostureCount!)

        //Double(currSession.badPostureCount) / Double(currSession.postureCount)
//        print(cellScore)

        if (riskScore ?? 0) > 0.0 && (riskScore ?? 0) <= 0.2 {
            cell.colorImage.image = UIImage(named: "purple4")
        } else if (riskScore ?? 0) > 0.2 && (riskScore ?? 0) <= 0.4 {
            cell.colorImage.image = UIImage(named: "purple3")
        } else if (riskScore ?? 0) > 0.4 && (riskScore ?? 0) <= 2.0{
            cell.colorImage.image = UIImage(named: "purple2")
        } else {
            cell.colorImage.image = UIImage(named: "purple1")
        }
        return cell


    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        currSession = UserData.userSessions[indexPath.item]
        currSessionIndex = indexPath.item
        self.performSegue(withIdentifier: "toDetail", sender: self)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let detail = segue.destination as? DetailViewController{
            detail.sessionIndex = currSessionIndex
        }
    }



}
