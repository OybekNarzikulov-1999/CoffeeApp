//
//  CoffeeView.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 26/10/22.
//

import UIKit

class CoffeeView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func initViews(){
        
        let coffeeImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 157, height: 157))
        coffeeImage.image = UIImage(named: "coffee1")
        self.addSubview(coffeeImage)
        
        let coffeeNameLabel = UILabel(frame: CGRect(x: 10, y: coffeeImage.frame.maxY + 8, width: self.frame.width - 20, height: 18))
        coffeeNameLabel.text = "Macchiato Short"
        coffeeNameLabel.textColor = UIColor(rgb: 0x2D2D2D)
        coffeeNameLabel.font = UIFont(name: "Poppins-Regular", size: 12)
        self.addSubview(coffeeNameLabel)
        
        let coffeePriceLabel = UILabel(frame: CGRect(x: 10, y: coffeeNameLabel.frame.maxY + 8, width: 36, height: 22))
        coffeePriceLabel.text = "$ 5.00"
        coffeePriceLabel.textColor = UIColor(rgb: 0xFF9314)
        coffeePriceLabel.font = UIFont(name: "BebasNeue-Regular", size: 18)
        self.addSubview(coffeePriceLabel)
        
        let basketImage = UIImageView(frame: CGRect(x: coffeePriceLabel.frame.maxX + 75, y: coffeeImage.frame.maxY + 32, width: 26, height: 26))
        basketImage.image = UIImage(named: "basket")
        self.addSubview(basketImage)
    }
}
