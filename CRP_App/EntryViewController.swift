//
//  EntryViewController.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 3/3/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import Material

class EntryViewController: UIViewController {
    
    var nameLabel: UILabel!
    var titleLabel: UILabel!
    var submitButton: UIButton!
    var statButton: UIButton!
    var infoButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientBackground = CAGradientLayer()
        gradientBackground.frame = self.view.bounds
        gradientBackground.colors = [UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0).cgColor, UIColor(red:0.52, green:0.18, blue:0.57, alpha:1.0).cgColor]
        gradientBackground.locations = [0.3, 1.0]
        view.layer.insertSublayer(gradientBackground, at: 0)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        titleLabel.center = CGPoint(x: view.frame.width/2, y: 150)
        titleLabel.textAlignment = .center
        titleLabel.text = "Clinical Risk Predictor"
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "ProximaNova-Bold", size: 36)
        view.addSubview(titleLabel)
        
        nameLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 100, y: titleLabel.frame.maxY + 40, width: 200, height: 50))
        nameLabel.textAlignment = .center
        nameLabel.text = "Welcome"
        nameLabel.font = UIFont(name: "ProximaNova-Semibold", size: 24)
        nameLabel.textColor = .white
//        view.addSubview(nameLabel)

        
//        submitButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        submitButton = Button(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        submitButton.center = CGPoint(x: view.frame.width/2, y: titleLabel.frame.maxY + 500)
        submitButton.setTitle("Start", for: .normal)
        submitButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 36)
        submitButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        submitButton.layer.cornerRadius = submitButton.frame.height/2
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.addTarget(self, action: #selector(toStart), for: .touchUpInside)
        view.addSubview(submitButton)
        
        statButton = Button(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        statButton.center = CGPoint(x: view.frame.width/2, y: submitButton.frame.maxY - 200)
        statButton.setTitle("Stats", for: .normal)
        statButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 36)
        statButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        statButton.layer.cornerRadius = statButton.frame.height/2
        statButton.setTitleColor(.white, for: .normal)
        statButton.addTarget(self, action: #selector(toStats), for: .touchUpInside)
        view.addSubview(statButton)
        
        infoButton = Button(frame: CGRect(x: 0, y: 0, width: 300, height: 60))
        infoButton.center = CGPoint(x: view.frame.width/2, y: statButton.frame.maxY - 200)
        infoButton.setTitle("Information", for: .normal)
        infoButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 36)
        infoButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        infoButton.layer.cornerRadius = infoButton.frame.height/2
        infoButton.setTitleColor(.white, for: .normal)
        infoButton.addTarget(self, action: #selector(toInfo), for: .touchUpInside)
        view.addSubview(infoButton)
        
    }
    
    @objc func toInfo() {
        
        self.performSegue(withIdentifier: "entryToInfo", sender: self)
        
    }
    
    @objc func toStats() {
        
        self.performSegue(withIdentifier: "entryToStats", sender: self)
        
    }
    
    @objc func toStart() {
        
        self.performSegue(withIdentifier: "entryToQ1", sender: self)
        
    }
    
}
