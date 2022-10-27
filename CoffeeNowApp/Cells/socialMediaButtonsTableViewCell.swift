//
//  socialMediaButtonsTableViewCell.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 25/10/22.
//

import UIKit

class socialMediaButtonsTableViewCell: UITableViewCell {

    var onAction: ((UIButton) -> Void)?
    
    func initViews(){
        
        let googleButton = UIButton(frame: CGRect(x: 61, y: 0, width: 80, height: 80))
        googleButton.setImage(UIImage(named: "google"), for: .normal)
        googleButton.setTitle("google", for: .normal)
        googleButton.addTarget(self, action: #selector(tapped(sender: )), for: .touchUpInside)
        self.contentView.addSubview(googleButton)

        let facebookButton = UIButton(frame: CGRect(x: googleButton.frame.maxX + 54, y: 0, width: 80, height: 80))
        facebookButton.setImage(UIImage(named: "facebook"), for: .normal)
        facebookButton.setTitle("facebook", for: .normal)
        facebookButton.addTarget(self, action: #selector(tapped(sender: )), for: .touchUpInside)
        self.contentView.addSubview(facebookButton)
        
    }
    
    @objc func tapped(sender: UIButton){
     
        if let onAction = onAction {
            onAction(sender)
        }
        
    }
    
}
