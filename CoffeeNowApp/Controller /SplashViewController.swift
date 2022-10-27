//
//  SplashViewController.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 17/10/22.
//

import UIKit
import SnapKit

class SplashViewController: UIViewController {
    
    //MARK: - Variables
    
    private lazy var mainView: UIView = {
       
        let view = UIView()
        view.backgroundColor = .green
        return view
        
    }()
    
    private lazy var splashImage: UIImageView = {
       
        let splashImage = UIImageView()
        splashImage.image = UIImage(named: "splash")
        return splashImage
        
    }()

    
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        initSetups()
        initConstraints()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            
            let loginPage = LoginViewController()
            loginPage.modalPresentationStyle = .fullScreen
            self.present(loginPage, animated: true)
            
        }
        
    }
    
    
    //MARK: - Methods
    
    func initSetups(){
        view.backgroundColor = .white
        view.addSubview(mainView)
        mainView.addSubview(splashImage)
    }
    
    func initConstraints() {
        
        mainView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        splashImage.snp.makeConstraints { make in
            make.top.left.right.bottom.equalTo(0)
        }
        
    }
}
