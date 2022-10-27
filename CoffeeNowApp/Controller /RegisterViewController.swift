//
//  RegisterViewController.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 25/10/22.
//

import UIKit

class RegisterViewController: UIViewController {

    //MARK: - Variables
    
    private lazy var logoBrandView: LogoBrandView = {
        
        let logoBrandView = LogoBrandView(frame: CGRect(x: 0, y: 0, width: windowWidth, height: 192))
        logoBrandView.initViews(mode: .register)
        logoBrandView.backgroundColor = .white
        return logoBrandView
        
    }()
    
    private lazy var tableView: UITableView = {
        
        let tableView = UITableView(frame: CGRect(x: 20, y: logoBrandView.frame.maxY + 32, width: (windowWidth - 40), height: windowHieight - logoBrandView.frame.height - 32))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(CustomTextFieldTableViewCell.self, forCellReuseIdentifier: Constants.customTextFieldCell)
        tableView.register(CustomBorderButtonCell.self, forCellReuseIdentifier: Constants.customBorderButtonCell)
        tableView.register(QuestionTextTableViewCell.self, forCellReuseIdentifier: Constants.questionTextTableViewCell)
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



//MARK: - TableView Methods

extension RegisterViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .fullName, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
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
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .phoneNumber, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 3:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .password, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 4:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customBorderButtonCell, for: indexPath) as! CustomBorderButtonCell
            cell.initViews(mode: .register, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 54))
            cell.onAction = { press in
                print("REGISTER")
            }
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 5:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.questionTextTableViewCell, for: indexPath) as! QuestionTextTableViewCell
            cell.initViews(mode: .login, question: "Already have an account?", frame: CGRect(x: 54, y: 0, width: 170, height: 21))
            cell.onAction = { press in
                
                DispatchQueue.main.async {
                    
                    let loginVC = LoginViewController()
                    loginVC.modalPresentationStyle = .fullScreen
                    self.present(loginVC, animated: true)
                    
                }
                
            }
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
            
        default:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            cell.initViews(mode: .fullName, frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 21))
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
            return 21
        default:
            return 105
        }
        
    }
    
}
