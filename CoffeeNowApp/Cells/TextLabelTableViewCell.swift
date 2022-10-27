//
//  TextLabelTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 26/10/22.
//

import UIKit

class TextLabelTableViewCell: UITableViewCell {

    func initViews(frame: CGRect){
        
        let textLabel = UILabel(frame: frame)
        textLabel.text = "We’ll send a password reset\nlink to your email."
        textLabel.textAlignment = .center
        textLabel.font = .boldSystemFont(ofSize: 14)
        textLabel.numberOfLines = 0
        textLabel.textColor = UIColor(rgb: 0xA3A3A3)
        self.contentView.addSubview(textLabel)
        
    }

}
