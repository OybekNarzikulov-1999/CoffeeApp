//
//  CustomButtonCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 23/10/22.
//

import Foundation
import UIKit


public  var windowWidth = UIScreen.main.bounds.width
public  var windowHieight = UIScreen.main.bounds.height

class CustomButtonCell: UITableViewCell {
    
    var onAction: ((Bool) -> Void)?
    
    func initViews(frame: CGRect) {
        
        let mainBtn = UIButton(frame: frame)
        mainBtn.backgroundColor = .brown
        mainBtn.layer.cornerRadius = 10
        mainBtn.setTitle("OK", for: .normal)
        mainBtn.setTitleColor(UIColor.white, for: .normal)
        mainBtn.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        self.contentView.addSubview(mainBtn)

    }
    
    @objc func tapped() {
        if let onAction = onAction {
            onAction(true)
        }
    }
}
