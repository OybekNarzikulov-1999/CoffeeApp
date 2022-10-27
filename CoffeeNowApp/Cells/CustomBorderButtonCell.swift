//
//  CustomButtonCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 23/10/22.
//

import Foundation
import UIKit


class CustomBorderButtonCell: UITableViewCell {
    
    var onAction: ((Bool) -> Void)?
    
    func initViews(mode: BorderButtonText,frame: CGRect) {
        
        let mainBtn = UIButton(frame: frame)
        mainBtn.backgroundColor = UIColor(rgb: 0x321D0B)
        mainBtn.layer.cornerRadius = 10
        mainBtn.setTitle(mode.title, for: .normal)
        mainBtn.titleLabel?.font = .boldSystemFont(ofSize: 18)
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
