//
//  HomePageViewController.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 26/10/22.
//

import UIKit

class HomePageViewController: UIViewController {

    //MARK: - Variables
    
    private lazy var homePageHeaderView: HomePageHeaderView = {
       
        let homePageHeaderView = HomePageHeaderView(frame: CGRect(x: 0, y: 0, width: windowWidth, height: 97))
        homePageHeaderView.initViews()
        homePageHeaderView.backgroundColor = .white
        return homePageHeaderView
    }()
    
    private lazy var tableView: UITableView = {
       
        let tableView = UITableView(frame: CGRect(x: 20, y: homePageHeaderView.frame.maxY, width: windowWidth - 40, height: windowHieight - homePageHeaderView.frame.height))
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(BannerImageTableViewCell.self, forCellReuseIdentifier: Constants.bannerImageTableViewCell)
        tableView.register(RecommendedCoffeesTableViewCell.self, forCellReuseIdentifier: Constants.recommendedCoffeesTableViewCell)
        return tableView
        
    }()
    
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initSetups()
    }
    

    //MARK: - Methods
    
    func initSetups(){
        
        view.backgroundColor = .white
        view.addSubview(homePageHeaderView)
        view.addSubview(tableView)
        
    }

}

extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.bannerImageTableViewCell, for: indexPath) as! BannerImageTableViewCell
            cell.initViews(frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 150))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
        case 1:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.recommendedCoffeesTableViewCell, for: indexPath) as! RecommendedCoffeesTableViewCell
            cell.initViews()
            cell.selectionStyle = .none
            cell.backgroundColor = .red
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.textLabelTableViewCell, for: indexPath) as! TextLabelTableViewCell
            cell.initViews(frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 42))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 190
        case 1:
            return 225
        default:
            return 0
        }
    }
    
}
