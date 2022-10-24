//
//  LogoBrandView.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 23/10/22.
//

import Foundation
import UIKit

class LogoBrandView: UIView {
    
    //MARK: - Properties
//    var mode: LogoType = .addressSetup
    
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    func initViews(mode: LogoType) {
        
//        self.mode = mode
        
        let logoIMage = UIImageView(frame: CGRect(x: (windowWidth - 88) / 2, y: 52, width: 88, height: 88))
        logoIMage.image = UIImage(named: "coffee")
        logoIMage.contentMode = .center
        self.addSubview(logoIMage)
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: logoIMage.frame.maxY + 16, width: windowWidth, height: 36))
        titleLabel.font = .boldSystemFont(ofSize: 24)
        titleLabel.tintColor = .blue
        titleLabel.text = mode.title
        titleLabel.textAlignment = .center
        self.addSubview(titleLabel)
        
    }
}
