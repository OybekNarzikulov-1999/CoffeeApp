//
//  ForgotPasswordViewController.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 26/10/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    //MARK: - Variables
    
    private lazy var logoBrandView: LogoBrandView = {
        
        let logoBrandView = LogoBrandView(frame: CGRect(x: 0, y: 0, width: windowWidth, height: 192))
        logoBrandView.initViews(mode: .forgorPassword)
        logoBrandView.backgroundColor = .white
        return logoBrandView
        
    }()
    
    private lazy var tableView: UITableView = {
        
        let tableView = UITableView(frame: CGRect(x: 20, y: logoBrandView.frame.maxY + 6, width: windowWidth - 40, height: windowHieight - logoBrandView.frame.height - 32))
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TextLabelTableViewCell.self, forCellReuseIdentifier: Constants.textLabelTableViewCell)
        tableView.register(CustomTextFieldTableViewCell.self, forCellReuseIdentifier: Constants.customTextFieldCell)
        tableView.register(CustomBorderButtonCell.self, forCellReuseIdentifier: Constants.customBorderButtonCell)
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

extension ForgotPasswordViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
            
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.textLabelTableViewCell, for: indexPath) as! TextLabelTableViewCell
            cell.initViews(frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 42))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 1:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .email, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 2:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customBorderButtonCell, for: indexPath) as! CustomBorderButtonCell
            cell.initViews(mode: .resetPassword, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 54))
            cell.onAction = { press in
                print("RESET PASSWORD")
            }
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .email, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 62
        case 1:
            return 121
        case 2:
            return 54
        default:
            return 0
        }
    }
    
}
