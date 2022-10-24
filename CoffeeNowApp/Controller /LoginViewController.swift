//
//  LoginViewController.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 17/10/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Variables
    
    private lazy var logoBrandView: LogoBrandView = {
        
        let logoBrandView = LogoBrandView(frame: CGRect(x: 0, y: 0, width: windowWidth, height: 156))
        logoBrandView.initViews(mode: .login)
        logoBrandView.backgroundColor = .white
        return logoBrandView
        
    }()
    
    private lazy var tableView: UITableView = {
        
        let tableView = UITableView(frame: CGRect(x: 20, y: logoBrandView.frame.maxY + 32, width: (windowWidth - 40), height: (windowHieight - logoBrandView.frame.height)))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTextFieldTableViewCell.self, forCellReuseIdentifier: Constants.customTextFieldCell)
        tableView.separatorStyle = .none
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
        view.addSubview(logoBrandView)
        view.addSubview(tableView)
        
        
    }
}


//MARK: - TableView Delegate and DataSource Methods
extension LoginViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        case 1:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            
            cell.initViews(mode: .email, frame: CGRect(x: 0, y: 0, width: windowWidth, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            return cell
            
        case 2:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            
            cell.initViews(mode: .password, frame: CGRect(x: 0, y: 42, width: windowWidth, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            return cell
            
        default:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            
            cell.initViews(mode: .phoneNumber, frame: CGRect(x: 0, y: 250, width: 0, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            return cell
        }
    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        switch indexPath.row{
//        case 1:
//            return 77
//        case 2:
//            return 77
//        default:
//            return 77
//        }
//    }
    
    
}
