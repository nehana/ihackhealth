//
//  ResultsVC.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 2/29/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import Material
import CoreData
import CareKit

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

class ResultsVC: UIViewController {
    
    var nameLabel: UILabel!
    var titleLabel: UILabel!
    var submitButton: UIButton!
    var riskLabel: UILabel!
    var infoLabel: UILabel!
    var resultLabel: UILabel!
    
    var x0: Double = -7.12
    
    var risk: Double = 40
    
    var sessionDate = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateRisk()
        
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = self.view.bounds
        gradientBackground.colors = [UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0).cgColor, UIColor(red:0.52, green:0.18, blue:0.57, alpha:1.0).cgColor]
        gradientBackground.locations = [0.3, 1.0]
        view.layer.insertSublayer(gradientBackground, at: 0)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        titleLabel.center = CGPoint(x: view.frame.width/2, y: 150)
        titleLabel.textAlignment = .center
        titleLabel.text = "Results"
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "ProximaNova-Bold", size: 46)
        view.addSubview(titleLabel)
        
        nameLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 100, y: titleLabel.frame.maxY + 100, width: 200, height: 50))
        nameLabel.textAlignment = .center
        nameLabel.text = "Your risk is:"
        nameLabel.font = UIFont(name: "ProximaNova-Semibold", size: 36)
        nameLabel.textColor = .white
        view.addSubview(nameLabel)
        
        riskLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 100, y: nameLabel.frame.maxY + 40, width: 200, height: 50))
        riskLabel.textAlignment = .center
        riskLabel.text = "\(risk)%"
        riskLabel.font = UIFont(name: "ProximaNova-Semibold", size: 42)
        riskLabel.textColor = .white
        view.addSubview(riskLabel)
        
        resultLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 100, y: riskLabel.frame.maxY + 40, width: 200, height: 50))
        resultLabel.textAlignment = .center
        if (risk > 0.4) {
            resultLabel.text = "Very high"
        } else if (risk < 0.4){
            resultLabel.text = "Very low"
        } else {
            resultLabel.text = ""
        }
        resultLabel.font = UIFont(name: "ProximaNova-Semibold", size: 20)
        resultLabel.textColor = .white
        view.addSubview(resultLabel)

        
        submitButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        submitButton.center = CGPoint(x: view.frame.width/2, y: titleLabel.frame.maxY + 500)
        submitButton.setTitle("Start over", for: .normal)
        submitButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        submitButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        submitButton.layer.cornerRadius = submitButton.frame.height/2
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.addTarget(self, action: #selector(toEntryPage), for: .touchUpInside)
        view.addSubview(submitButton)
        
        let currentDateTime = Date()
        
        // initialize the date formatter and set the style
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateStyle = .short
        
        sessionDate = formatter.string(from: currentDateTime)
        
        createData()
 
    }
    
    @objc func toStartPage() {
        
        self.performSegue(withIdentifier: "toStart", sender: self)
        
    }
    
    @objc func toEntryPage() {
        
        self.performSegue(withIdentifier: "resultsToEntry", sender: self)
        
    }
    
    
    func calculateRisk() {

        let e = 2.71828
        
        risk = 100 * (pow(e, (x0 + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8)))/(1 + (pow(e, ((x0 + x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8)))))
        risk = risk.rounded(toPlaces: 2)
    
    }
    
    func createData(){
        
        //As we know that container is set up in the AppDelegates so we need to refer that container.
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        
        //We need to create a context from this container
        let managedContext = appDelegate.persistentContainer.viewContext
        
        //Now let’s create an entity and new user records.
        let entity = NSEntityDescription.entity(forEntityName: "Sessions", in: managedContext)!
        
        let session = NSManagedObject(entity: entity, insertInto: managedContext)
        session.setValue(risk, forKey: "riskScore")
        session.setValue(sessionDate, forKey: "date")
        
        do {
            try managedContext.save()
            UserData.userSessions.append(session)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
        
    }
    
    
}
