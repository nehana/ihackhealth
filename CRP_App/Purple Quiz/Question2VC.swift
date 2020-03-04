//
//  Question2VC.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 2/29/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import Material

public var x2: Double = 0

class Question2VC: UIViewController {
    
    var nameLabel: UILabel!
    var titleLabel: UILabel!
    var maleButton: UIButton!
    var femaleButton: UIButton!
    
    
    
    
    
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
        titleLabel.text = "Question 2"
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "ProximaNova-Bold", size: 36)
        view.addSubview(titleLabel)
        
        nameLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 100, y: titleLabel.frame.maxY + 40, width: 200, height: 50))
        nameLabel.textAlignment = .center
        nameLabel.text = "What is your sex?"
        nameLabel.font = UIFont(name: "ProximaNova-Semibold", size: 24)
        nameLabel.textColor = .white
        view.addSubview(nameLabel)
        
        maleButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        maleButton.center = CGPoint(x: view.frame.width/2, y: nameLabel.frame.maxY + 150)
        maleButton.setTitle("MALE", for: .normal)
        maleButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        maleButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        maleButton.layer.cornerRadius = maleButton.frame.height/2
        maleButton.setTitleColor(.white, for: .normal)
        maleButton.tag = 1
        maleButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        maleButton.addTarget(self, action: #selector(toQuestion3), for: .touchUpInside)
        view.addSubview(maleButton)
        
        femaleButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        femaleButton.center = CGPoint(x: view.frame.width/2, y: maleButton.frame.maxY + 100)
        femaleButton.setTitle("FEMALE", for: .normal)
        femaleButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        femaleButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        femaleButton.layer.cornerRadius = femaleButton.frame.height/2
        femaleButton.setTitleColor(.white, for: .normal)
        femaleButton.tag = 2
        femaleButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        femaleButton.addTarget(self, action: #selector(toQuestion3), for: .touchUpInside)
        view.addSubview(femaleButton)
        
    }
    
    @objc func toQuestion3() {
        
        self.performSegue(withIdentifier: "toQ3", sender: self)
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let buttonTag: UIButton = sender
        if buttonTag.tag == 1 {
            x2 = 0.35
        } else if buttonTag.tag == 2 {
            x2 = 0
        }
        print(x2)
    }
    
}
