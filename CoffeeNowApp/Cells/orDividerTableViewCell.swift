//
//  orDividerTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 25/10/22.
//

import UIKit

class orDividerTableViewCell: UITableViewCell {

    func initViews(){
        
        let orImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 30))
        orImageView.image = UIImage(named: "or")
        self.contentView.addSubview(orImageView)
    }

}
