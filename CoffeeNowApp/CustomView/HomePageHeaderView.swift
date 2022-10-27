//
//  HomePageHeaderView.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 26/10/22.
//

import UIKit

class HomePageHeaderView: UIView {

    //MARK: - Variables
    
    
    //MARK: - Lifecycle
   
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func initViews(){
        
        let nameLabel = UILabel(frame: CGRect(x: 20, y: 42, width: 107, height: 27))
        
        let text = NSMutableAttributedString()
        text.append(NSAttributedString(string: "Hello, ", attributes: [NSAttributedString.Key.foregroundColor: UIColor(rgb: 0x321D0B), NSMutableAttributedString.Key.font: UIFont(name: "Poppins-SemiBold", size: 18)!]));
        text.append(NSAttributedString(string: "John", attributes: [NSAttributedString.Key.foregroundColor: UIColor(rgb: 0xFF9314), NSMutableAttributedString.Key.font: UIFont(name: "Poppins-SemiBold", size: 18)!]))
        text.append(NSAttributedString(string: "!", attributes: [NSAttributedString.Key.foregroundColor: UIColor(rgb: 0x321D0B), NSMutableAttributedString.Key.font: UIFont(name: "Poppins-SemiBold", size: 18)!]));
        
//        let myMutableString = NSMutableAttributedString(string: nameLabel.text!, attributes: [NSAttributedString.Key.font :UIFont(name: "Georgia", size: 18.0)!])
//         myMutableString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(rgb: 0xFF9314), range: NSRange(location:7,length:4))
        
        nameLabel.attributedText = text
        self.addSubview(nameLabel)
        
        let locationImage = UIImageView(frame: CGRect(x: 20, y: nameLabel.frame.maxY + 2, width: 14, height: 14))
        locationImage.image = UIImage(named: "location")
        self.addSubview(locationImage)
        
        
        let cityNameLabel = UILabel(frame: CGRect(x: locationImage.frame.maxX + 5, y: nameLabel.frame.maxY + 3, width: 74, height: 14))
        cityNameLabel.font = UIFont(name: "BebasNeue-Regular", size: 12)
        cityNameLabel.textColor = UIColor(rgb: 0xFF9314)
        cityNameLabel.text = "JAKARTA, INDONESIA"
        self.addSubview(cityNameLabel)
        
        
        let ticketImage = UIImageView(frame: CGRect(x: nameLabel.frame.maxX + 160, y: 49, width: 28, height: 28))
        ticketImage.image = UIImage(named: "ticket")
        self.addSubview(ticketImage)
        
        let heartImage = UIImageView(frame: CGRect(x: ticketImage.frame.maxX + 12, y: 49, width: 28, height: 28))
        heartImage.image = UIImage(named: "heart")
        self.addSubview(heartImage)
    }
    
    
}
