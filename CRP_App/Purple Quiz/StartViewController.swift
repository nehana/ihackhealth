//
//  ViewController.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 2/12/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import Material

class StartViewController: UIViewController {
    
    var nameLabel: UILabel!
    var titleLabel: UILabel!
    var submitButton: UIButton!
    
    
    
    
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
        nameLabel.text = "Let's get started!"
        nameLabel.font = UIFont(name: "ProximaNova-Semibold", size: 24)
        nameLabel.textColor = .white
//        view.addSubview(nameLabel)

        
//        submitButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        submitButton = Button(frame: CGRect(x: 0, y: 0, width: 300, height: 100))
        submitButton.center = CGPoint(x: view.frame.width/2, y: titleLabel.frame.maxY + 500)
        submitButton.setTitle("Start", for: .normal)
        submitButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 36)
        submitButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        submitButton.layer.cornerRadius = submitButton.frame.height/2
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.addTarget(self, action: #selector(toQuestion1), for: .touchUpInside)
        view.addSubview(submitButton)
        
    }
    
    @objc func toQuestion1() {
        
        self.performSegue(withIdentifier: "toQ1", sender: self)
        
    }
    
}




