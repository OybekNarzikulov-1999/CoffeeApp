//
//  CustomTextFieldTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 24/10/22.
//

import UIKit

class CustomTextFieldTableViewCell: UITableViewCell {

    func initViews(mode: TextFieldType, frame: CGRect){
        
        let titleLabel = UILabel(frame: frame)
        titleLabel.text = mode.title
        titleLabel.font = .systemFont(ofSize: 14)
        titleLabel.textColor = UIColor(rgb: 0x7D7D7D)
        self.contentView.addSubview(titleLabel)
        
        let textField = UITextField(frame: CGRect(x: 0, y: titleLabel.frame.maxY + 6, width: windowWidth - 40, height: 50))
        textField.placeholder = mode.placeholder
        textField.textContentType = .emailAddress
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor(rgb: 0xF5F5F5)
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 1
        textField.clipsToBounds = true
        textField.layer.borderColor = UIColor(rgb: 0xD9D9D9).cgColor
        self.contentView.addSubview(textField)
    }
}
