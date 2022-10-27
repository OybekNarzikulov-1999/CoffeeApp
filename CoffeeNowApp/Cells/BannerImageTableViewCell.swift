//
//  BannerImageTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 26/10/22.
//

import UIKit

class BannerImageTableViewCell: UITableViewCell {

    func initViews(frame: CGRect){
        
        let bannerImage = UIImageView(frame: frame)
        bannerImage.image = UIImage(named: "banner")
        self.contentView.addSubview(bannerImage)
        
        let recommendedLabel = UILabel(frame: CGRect(x: 0, y: bannerImage.frame.maxY + 18, width: windowWidth - 40, height: 22))
        recommendedLabel.text = "RECOMMENDED FOR YOU"
        recommendedLabel.font = UIFont(name: "BebasNeue-Regular", size: 18)
        recommendedLabel.textColor = UIColor(rgb: 0x321D0B)
        self.contentView.addSubview(recommendedLabel)
        
    }

}
