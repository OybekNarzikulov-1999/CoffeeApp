//
//  CustomYellowButtonTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 25/10/22.
//

import UIKit

class CustomYellowButtonTableViewCell: UITableViewCell {
    
    var onAction: ((Bool) -> Void)?
    
    func initViews(frame: CGRect, mode: YellowButtonText){
        
        let yellowButton = UIButton(frame: frame)
        yellowButton.setTitle(mode.name, for: .normal)
        yellowButton.titleLabel?.font = .systemFont(ofSize: 14)
        yellowButton.setTitleColor(UIColor(rgb: 0xFF9314), for: .normal)
        yellowButton.contentHorizontalAlignment = .right
        yellowButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        self.contentView.addSubview(yellowButton)
    }
    
    @objc func tapped(){
        if let onAction = onAction {
            onAction(true)
        }
    }

}
