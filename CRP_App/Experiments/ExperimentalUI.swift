//
//  ExperimentalUI.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 2/29/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import Material

class ExperimentalUI: UIViewController {
    
    var nameLabel: UILabel!
    var titleLabel: UILabel!
    var continueButton: UIButton!
    var yesButton: UIButton!
    var noButton: UIButton!
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
        titleLabel.text = "Question 1"
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "ProximaNova-Bold", size: 46)
        view.addSubview(titleLabel)
        
        nameLabel = UILabel(frame: CGRect(x: 50, y: titleLabel.frame.maxY + 40, width: view.frame.width, height: 50))
        nameLabel.text = "Are you above 60 years old?"
        nameLabel.font = UIFont(name: "ProximaNova-Semibold", size: 24)
        nameLabel.textColor = .white
        view.addSubview(nameLabel)
        
        yesButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        yesButton.center = CGPoint(x: view.frame.width/2, y: nameLabel.frame.maxY + 150)
        yesButton.setTitle("YES", for: .normal)
        yesButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        yesButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        yesButton.layer.cornerRadius = yesButton.frame.height/2
        yesButton.setTitleColor(.white, for: .normal)
        yesButton.addTarget(self, action: #selector(toQuestion1), for: .touchUpInside)
        view.addSubview(yesButton)
        
        noButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        noButton.center = CGPoint(x: view.frame.width/2, y: yesButton.frame.maxY + 100)
        noButton.setTitle("NO", for: .normal)
        noButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        noButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        noButton.layer.cornerRadius = noButton.frame.height/2
        noButton.setTitleColor(.white, for: .normal)
        noButton.addTarget(self, action: #selector(toQuestion1), for: .touchUpInside)
        view.addSubview(noButton)
        
        
//        submitButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
//        submitButton.center = CGPoint(x: view.frame.width/2, y: titleLabel.frame.maxY + 600)
//        submitButton.setTitle("Continue", for: .normal)
//        submitButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
//        submitButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
//        submitButton.layer.cornerRadius = submitButton.frame.height/2
//        submitButton.setTitleColor(.white, for: .normal)
//        submitButton.addTarget(self, action: #selector(toQuestion1), for: .touchUpInside)
//        view.addSubview(submitButton)
        
//        startLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
//        startLabel.center = CGPoint(x: view.frame.width / 2, y:  200 )
//        startLabel.text = "Experimental UI"
//        startLabel.textColor = UIColor.white
//        startLabel.font = UIFont(name: "HelveticaNeue-Light", size: 30)
//        startLabel.textAlignment = .center
//        view.addSubview(startLabel)
        
//        continueButton = UIButton(frame: CGRect(x: 20, y: view.frame.height -     150, width: view.frame.width - 40, height: 60))
//        continueButton.backgroundColor = UIColor(red: 0.20, green: 0.29, blue: 0.37, alpha: 1.0)
//        continueButton.setTitle("Get started!", for: UIControl.State())
//        continueButton.setTitleColor(UIColor.white, for: UIControl.State())
//        continueButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 20)
//        continueButton.addTarget(self, action: #selector(toQuestion1), for: .touchUpInside)
//        view.addSubview(continueButton)
        
    }
    
    @objc func toQuestion1() {
        
        self.performSegue(withIdentifier: "toQ1", sender: self)
        
    }
    
}




