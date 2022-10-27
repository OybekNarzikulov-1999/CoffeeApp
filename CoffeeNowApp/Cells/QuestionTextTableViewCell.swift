//
//  QuestionTextTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 25/10/22.
//

import UIKit

class QuestionTextTableViewCell: UITableViewCell {

    var onAction: ((Bool) -> Void)?
    
    func initViews(mode: YellowButtonText,question: String, frame: CGRect){
        
        let questionLabel = UILabel(frame: frame)
        questionLabel.text = question
        questionLabel.textAlignment = .left
        questionLabel.font = .systemFont(ofSize: 14)
        questionLabel.textColor = UIColor(rgb: 0x7D7D7D)
        self.contentView.addSubview(questionLabel)
        
        let yellowButton = UIButton(frame: CGRect(x: questionLabel.frame.maxX, y: 0, width: 80, height: 21))
        yellowButton.setTitle(mode.name, for: .normal)
        yellowButton.titleLabel?.font = .systemFont(ofSize: 14)
        yellowButton.setTitleColor(UIColor(rgb: 0xFF9314), for: .normal)
        yellowButton.contentHorizontalAlignment = .left
        yellowButton.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        self.contentView.addSubview(yellowButton)
        
    }
    
    @objc func tapped(){
        if let onAction = onAction {
            onAction(true)
        }
    }
    

}
