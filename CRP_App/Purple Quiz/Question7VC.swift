//
//  Question7VC.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 2/29/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit
import Material

public var x7: Double = 0

class Question7VC: UIViewController {
    
    var nameLabel: UILabel!
    var titleLabel: UILabel!
    var infoLabel: UILabel!
    var info2Label: UILabel!
    var yesButton: UIButton!
    var noButton: UIButton!
    
    
    
    
    
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
        titleLabel.text = "Question 7"
        titleLabel.textColor = .white
        titleLabel.font = UIFont(name: "ProximaNova-Bold", size: 36)
        view.addSubview(titleLabel)
        
        nameLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 185, y: titleLabel.frame.maxY + 40, width: 370, height: 50))
        nameLabel.textAlignment = .center
        nameLabel.text = "Does the patient have a bleeding disorder?"
        nameLabel.font = UIFont(name: "ProximaNova-Semibold", size: 18)
        nameLabel.textColor = .white
        view.addSubview(nameLabel)
        
        infoLabel = UILabel(frame: CGRect(x: view.frame.width/2 - 185, y: nameLabel.frame.maxY + 40, width: 370, height: 50))
        infoLabel.textAlignment = .center
        infoLabel.text = "A bleeding disorder is any condition that places the patient at risk for excessive bleeding."
        infoLabel.numberOfLines = 4
//        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.lineBreakMode = .byWordWrapping
        infoLabel.font = UIFont(name: "ProximaNova-Semibold", size: 15)
        infoLabel.textColor = .white
        view.addSubview(infoLabel)
        
        info2Label = UILabel(frame: CGRect(x: view.frame.width/2 - 185, y: infoLabel.frame.maxY + 40, width: 370, height: 50))
        info2Label.textAlignment = .center
        info2Label.text = "Examples include hemophilia, thrombocytopenia, and chronic anticoagulation that is continued (not including aspirin or NSAIDs)."
        info2Label.numberOfLines = 4
//        info2Label.translatesAutoresizingMaskIntoConstraints = false
        info2Label.lineBreakMode = .byWordWrapping
        info2Label.font = UIFont(name: "ProximaNova-Semibold", size: 15)
        info2Label.textColor = .white
        view.addSubview(info2Label)
        
        yesButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        yesButton.center = CGPoint(x: view.frame.width/2, y: info2Label.frame.maxY + 150)
        yesButton.setTitle("YES", for: .normal)
        yesButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        yesButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        yesButton.layer.cornerRadius = yesButton.frame.height/2
        yesButton.setTitleColor(.white, for: .normal)
        yesButton.tag = 1
        yesButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        yesButton.addTarget(self, action: #selector(toQuestion8), for: .touchUpInside)
        view.addSubview(yesButton)
        
        noButton = Button(frame: CGRect(x: 0, y: 0, width: 250, height: 60))
        noButton.center = CGPoint(x: view.frame.width/2, y: yesButton.frame.maxY + 100)
        noButton.setTitle("NO", for: .normal)
        noButton.titleLabel!.font = UIFont(name: "ProximaNova-Semibold", size: 28)
        noButton.backgroundColor = UIColor(red:0.19, green:0.16, blue:0.42, alpha:1.0)
        noButton.layer.cornerRadius = noButton.frame.height/2
        noButton.setTitleColor(.white, for: .normal)
        noButton.tag = 2
        noButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        noButton.addTarget(self, action: #selector(toQuestion8), for: .touchUpInside)
        view.addSubview(noButton)
        
    }
    
    @objc func toQuestion8() {
        
        self.performSegue(withIdentifier: "toQ8", sender: self)
        
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let buttonTag: UIButton = sender
        if buttonTag.tag == 1 {
            x7 = 0.52
        } else if buttonTag.tag == 2 {
            x7 = 0
        }
        print(x7)
    }
    
}
