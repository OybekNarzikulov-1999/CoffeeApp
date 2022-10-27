//
//  AddressViewController.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 25/10/22.
//

import UIKit

class AddressViewController: UIViewController {
    
    //MARK: - Variables
    
    private lazy var logoBrandView: LogoBrandView = {
       
        let logoBrandView = LogoBrandView(frame: CGRect(x: 0, y: 0, width: windowWidth, height: 192))
        logoBrandView.initViews(mode: .addressSetup)
        logoBrandView.backgroundColor = .white
        return logoBrandView
        
    }()
    
    private lazy var tableView: UITableView = {
       
        let tableView = UITableView(frame: CGRect(x: 20, y: logoBrandView.frame.maxY + 32, width: windowWidth - 40, height: (windowHieight - logoBrandView.frame.height - 32)))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(CustomTextFieldTableViewCell.self, forCellReuseIdentifier: Constants.customTextFieldCell)
        tableView.register(CustomBorderButtonCell.self, forCellReuseIdentifier: Constants.customBorderButtonCell)
        tableView.register(TwoTextFieldTableViewCell.self, forCellReuseIdentifier: Constants.twoTextFieldTableViewCell)
        tableView.register(SkipButtonTableViewCell.self, forCellReuseIdentifier: Constants.skipButtonTableViewCell)
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

extension AddressViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .addressLine1, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 1:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .addressLine2, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 2:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.twoTextFieldTableViewCell, for: indexPath) as! TwoTextFieldTableViewCell
            cell.initViews(mode1: .zipCode, mode2: .city, frame: CGRect(x: 0, y: 0, width: windowWidth/2 - 29.5, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 3:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .country, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 4:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customBorderButtonCell, for: indexPath) as! CustomBorderButtonCell
            cell.initViews(mode: .addAddress, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 54))
            cell.onAction = { press in
                print("ADD ADDRESS")
            }
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 5:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.skipButtonTableViewCell, for: indexPath) as! SkipButtonTableViewCell
            cell.initViews(frame: CGRect(x: 113, y: 0, width: windowWidth - 243, height: 23))
            cell.onAction = { press in
                print("SKIP FOR NOW")
            }
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        default:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .addressLine1, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 105
        case 1:
            return 105
        case 2:
            return 105
        case 3:
            return 113
        case 4:
            return 73
        case 5:
            return 27
        default:
            return 105
        }
        
    }
    
}
