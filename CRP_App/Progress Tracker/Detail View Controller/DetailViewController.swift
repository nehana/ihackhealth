//
//  DetailViewController.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 3/2/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import Material
import ResearchKit
import CoreData

class DetailViewController: UIViewController {

    var appTitle: UILabel!
    var dateLabel: UILabel!
    var dateTitle: UILabel!
    var durationTitle: UILabel!
    var timeTitle: UILabel!
    var scoreTitle: UILabel!
    var scorePercentValueTitle: UILabel!
    var tempBack: UIButton!

    var score = ""
    var duration1 = ""
    var score1 = ""
    var score2 = ""
    var date1 = ""
    var sessionIndex: Int!
    //var sesh1 : NSManagedObject!

    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = self.view.bounds
        gradientBackground.colors = [UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0).cgColor, UIColor(red:0.52, green:0.18, blue:0.57, alpha:1.0).cgColor]
        gradientBackground.locations = [0.3, 1.0]
        view.layer.insertSublayer(gradientBackground, at: 0)
        setupLayout()

        // Do any additional setup after loading the view.
    }

    func setupLayout() {
        view.backgroundColor = .purple
        let currSession = UserData.userSessions[sessionIndex]

        appTitle = UILabel(frame: CGRect(x: 30, y: 100, width: view.frame.width-60, height: 60))
        appTitle.font = .boldSystemFont(ofSize: 50)
        appTitle.textColor = .white
        appTitle.textAlignment = .center
        appTitle.center.x = self.view.center.x

        appTitle.text = "your risk score"
        view.addSubview(appTitle)
        
        dateLabel = UILabel(frame: CGRect(x: 30, y: appTitle.frame.maxY + 80, width: view.frame.width-60, height: 60))
        dateLabel.font = .boldSystemFont(ofSize: 35)
        dateLabel.textColor = .white
        dateLabel.textAlignment = .center
        dateLabel.text = "date"
        view.addSubview(dateLabel)

        dateTitle = UILabel(frame: CGRect(x: 30, y: dateLabel.frame.minY + 50, width: view.frame.width-60, height: 60))
        dateTitle.font = .boldSystemFont(ofSize: 25)
        dateTitle.textColor = .white
        dateTitle.textAlignment = .center
        dateTitle.text = currSession.value(forKeyPath: "date") as? String
        view.addSubview(dateTitle)

        durationTitle = UILabel(frame: CGRect(x: 60, y: dateTitle.frame.maxY + 80, width: view.frame.width-120, height: 30))
        durationTitle.font = .boldSystemFont(ofSize: 35)
        durationTitle.text = "score"
        durationTitle.textColor = .white
        durationTitle.textAlignment = .center
        view.addSubview(durationTitle)

        timeTitle = UILabel(frame: CGRect(x: 60, y: durationTitle.frame.maxY + 20, width: view.frame.width-120, height: 30))
        timeTitle.font = .boldSystemFont(ofSize: 25)
        let duration27 = currSession.value(forKeyPath: "riskScore")
//        let durationDouble = Double(currSession.value(forKeyPath: "riskScore") as! String)!
//        durationString(duration: durationDouble)
        timeTitle.text = "\(duration27!)%"
        timeTitle.textColor = .white
        timeTitle.textAlignment = .center
        view.addSubview(timeTitle)


//        scoreTitle = UILabel(frame: CGRect(x: 60, y: timeTitle.frame.maxY + 80, width: view.frame.width-120, height: 30))
//        scoreTitle.font = .boldSystemFont(ofSize: 35)
//        scoreTitle.text = "score"
//        scoreTitle.textColor = .white
//        scoreTitle.textAlignment = .center
//        view.addSubview(scoreTitle)
//
//        scorePercentValueTitle = UILabel(frame: CGRect(x: 60, y: scoreTitle.frame.maxY + 20, width: view.frame.width-120, height: 30))
//        scorePercentValueTitle.font = .boldSystemFont(ofSize: 25)
//        let doubleStr = String(format: "%.2f", cellScore*100)
//        scorePercentValueTitle.text = doubleStr + "%"
//        scorePercentValueTitle.textColor = .white
//        scorePercentValueTitle.textAlignment = .center
//        view.addSubview(scorePercentValueTitle)

    }

//    func durationString(duration: Double) {
//        let formatter = DateComponentsFormatter()
//        formatter.allowedUnits = [.hour, .minute, .second]
//        formatter.unitsStyle = .short
//
//        duration1 = formatter.string(from: TimeInterval(duration))!
//    }

//    //go to my stats page
//    @objc func backToStatsView() {
//        performSegue(withIdentifier: "backToStats", sender: self)
//
//    }


}
