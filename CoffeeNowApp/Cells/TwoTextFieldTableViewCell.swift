//
//  TwoTextFieldTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 25/10/22.
//

import UIKit

class TwoTextFieldTableViewCell: UITableViewCell {

    
    func initViews(mode1: TextFieldType, mode2: TextFieldType, frame: CGRect){
        
        let titleLabel1 = UILabel(frame: frame)
        titleLabel1.text = mode1.title
        titleLabel1.font = .systemFont(ofSize: 14)
        titleLabel1.textColor = UIColor(rgb: 0x7D7D7D)
        self.contentView.addSubview(titleLabel1)
        
        let textField1 = UITextField(frame: CGRect(x: 0, y: titleLabel1.frame.maxY + 6, width: windowWidth/2 - 29.5, height: 50))
        textField1.placeholder = mode1.placeholder
        textField1.textContentType = .emailAddress
        textField1.borderStyle = .roundedRect
        textField1.backgroundColor = UIColor(rgb: 0xF5F5F5)
        textField1.layer.cornerRadius = 10
        textField1.layer.borderWidth = 1
        textField1.clipsToBounds = true
        textField1.layer.borderColor = UIColor(rgb: 0xD9D9D9).cgColor
        self.contentView.addSubview(textField1)
        
        
        let titleLabel2 = UILabel(frame: CGRect(x: windowWidth / 2 - 12, y: 0, width: windowWidth/2 - 27.5, height: 21))
        titleLabel2.text = mode2.title
        titleLabel2.font = .systemFont(ofSize: 14)
        titleLabel2.textColor = UIColor(rgb: 0x7D7D7D)
        self.contentView.addSubview(titleLabel2)
        
        
        let textField2 = UITextField(frame: CGRect(x: windowWidth / 2 - 12, y: titleLabel2.frame.maxY + 6, width: windowWidth/2 - 27.5, height: 50))
        textField2.placeholder = mode2.placeholder
        textField2.textContentType = .emailAddress
        textField2.borderStyle = .roundedRect
        textField2.backgroundColor = UIColor(rgb: 0xF5F5F5)
        textField2.layer.cornerRadius = 10
        textField2.layer.borderWidth = 1
        textField2.clipsToBounds = true
        textField2.layer.borderColor = UIColor(rgb: 0xD9D9D9).cgColor
        self.contentView.addSubview(textField2)
        
    }
    

}
