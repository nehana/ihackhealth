//
//  StatsCollectionCell.swift
//  CRP_App
//
//  Created by Neha Nagabothu on 3/2/20.
//  Copyright © 2020 Neha Nagabothu. All rights reserved.
//

import Foundation
import UIKit

class StatisticsCollectionCell: UICollectionViewCell {

    //var cellColor : UIColor!
    //var colorButton : UIButton!
    var colorImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        //self.backgroundColor = UIColor.purple1
        colorImage = UIImageView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        colorImage.contentMode = .scaleAspectFit
        //colorButton.backgroundColor = cellColor
        colorImage.clipsToBounds = true
        contentView.addSubview(colorImage)
    }

}
