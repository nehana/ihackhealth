//
//  Question3VC.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 2/29/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import Material

public var x3: Double = 0

class Question3VC: UIViewController {
    
    var nameLabel: UILabel!
    var titleLabel: UILabel!
    var aButton: UIButton!
    var bButton: UIButton!
    var cButton: UIButton!
    var dButton: UIButton!
    
    
    
    
    
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
        titleLabel.text = "Question 3"
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "ProximaNova-Bold", size: 36)
        view.addSubview(titleLabel)
        
        nameLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 150, y: titleLabel.frame.maxY + 40, width: 300, height: 50))
        nameLabel.textAlignment = .center
        nameLabel.text = "What is your BMI range?"
        nameLabel.font = UIFont(name: "ProximaNova-Semibold", size: 24)
        nameLabel.textColor = .white
        view.addSubview(nameLabel)
        
        aButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        aButton.center = CGPoint(x: view.frame.width/2, y: nameLabel.frame.maxY + 100)
        aButton.setTitle("35 - 40", for: .normal)
        aButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        aButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        aButton.layer.cornerRadius = aButton.frame.height/2
        aButton.setTitleColor(.white, for: .normal)
        aButton.tag = 1
        aButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        aButton.addTarget(self, action: #selector(toQuestion4), for: .touchUpInside)
        view.addSubview(aButton)
        
        bButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        bButton.center = CGPoint(x: view.frame.width/2, y: aButton.frame.maxY + 100)
        bButton.setTitle("40 - 45", for: .normal)
        bButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        bButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        bButton.layer.cornerRadius = bButton.frame.height/2
        bButton.setTitleColor(.white, for: .normal)
        bButton.tag = 2
        bButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        bButton.addTarget(self, action: #selector(toQuestion4), for: .touchUpInside)
        view.addSubview(bButton)
        
        cButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        cButton.center = CGPoint(x: view.frame.width/2, y: bButton.frame.maxY + 100)
        cButton.setTitle("45 - 50", for: .normal)
        cButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        cButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        cButton.layer.cornerRadius = cButton.frame.height/2
        cButton.setTitleColor(.white, for: .normal)
        cButton.tag = 3
        cButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        cButton.addTarget(self, action: #selector(toQuestion4), for: .touchUpInside)
        view.addSubview(cButton)
        
        dButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        dButton.center = CGPoint(x: view.frame.width/2, y: cButton.frame.maxY + 100)
        dButton.setTitle("Above 50", for: .normal)
        dButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        dButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        dButton.layer.cornerRadius = dButton.frame.height/2
        dButton.setTitleColor(.white, for: .normal)
        dButton.tag = 4
        dButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        dButton.addTarget(self, action: #selector(toQuestion4), for: .touchUpInside)
        view.addSubview(dButton)
        
    }
    
    @objc func toQuestion4() {
        
        self.performSegue(withIdentifier: "toQ4", sender: self)
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let buttonTag: UIButton = sender
        if buttonTag.tag == 1 {
            x3 = 0.31
        } else if buttonTag.tag == 2 {
            x3 = 0.45
        } else if buttonTag.tag == 3 {
            x3 = 0.62
        } else if buttonTag.tag == 4 {
            x3 = 0.5
        }
        print(x3)
    }
    
}
