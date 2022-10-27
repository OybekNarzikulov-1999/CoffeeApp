//
//  SkipButtonTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 26/10/22.
//

import UIKit

class SkipButtonTableViewCell: UITableViewCell {

    var onAction: ((Bool) -> Void)?
    
    func initViews(frame: CGRect){
        
        let skipButton = UIButton(frame: frame)
        skipButton.contentHorizontalAlignment = .left
        skipButton.setTitle("Skip for now", for: .normal)
        skipButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
        skipButton.setTitleColor(UIColor(rgb: 0xA4A4A4), for: .normal)
        skipButton.addTarget(self, action: #selector(taped), for: .touchUpInside)
        self.contentView.addSubview(skipButton)
        
    }
    
    @objc func taped(){
        
        if let onAction = onAction {
            onAction(true)
        }
        
    }

}
