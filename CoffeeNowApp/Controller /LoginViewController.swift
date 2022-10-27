//
//  LoginViewController.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 17/10/22.
//

import UIKit

public var windowWidth = UIScreen.main.bounds.width
public var windowHieight = UIScreen.main.bounds.height

class LoginViewController: UIViewController {
    
    //MARK: - Variables
    
    private lazy var logoBrandView: LogoBrandView = {
        
        let logoBrandView = LogoBrandView(frame: CGRect(x: 0, y: 0, width: windowWidth, height: 192))
        logoBrandView.initViews(mode: .login)
        logoBrandView.backgroundColor = .white
        return logoBrandView
        
    }()
    
    private lazy var tableView: UITableView = {
        
        let tableView = UITableView(frame: CGRect(x: 20, y: logoBrandView.frame.maxY + 32, width: (windowWidth - 40), height: (windowHieight - logoBrandView.frame.height - 32)))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTextFieldTableViewCell.self, forCellReuseIdentifier: Constants.customTextFieldCell)
        tableView.register(CustomBorderButtonCell.self, forCellReuseIdentifier: Constants.customBorderButtonCell)
        tableView.register(CustomYellowButtonTableViewCell.self, forCellReuseIdentifier: Constants.CustomYellowButtonCell)
        tableView.register(QuestionTextTableViewCell.self, forCellReuseIdentifier: Constants.questionTextTableViewCell)
        tableView.register(orDividerTableViewCell.self, forCellReuseIdentifier: Constants.orDividerTableViewCell)
        tableView.register(socialMediaButtonsTableViewCell.self, forCellReuseIdentifier: Constants.socialMediaButtonCell)
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
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row{
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            
            cell.initViews(mode: .email, frame: CGRect(x: 0, y: 0, width: windowWidth, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            return cell
            
        case 1:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            
            cell.initViews(mode: .password, frame: CGRect(x: 0, y: 0, width: windowWidth, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            return cell
            
        case 2:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.CustomYellowButtonCell, for: indexPath) as! CustomYellowButtonTableViewCell
            cell.initViews(frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 18), mode: .forgotPassword)
            cell.selectionStyle = .none
            cell.backgroundColor = .white
            cell.onAction = { press in
                
                DispatchQueue.main.async {
                    
                    let forgetPasswordVC = ForgotPasswordViewController()
                    forgetPasswordVC.modalPresentationStyle = .fullScreen
                    self.present(forgetPasswordVC, animated: true)
                    
                }
                
            }
            return cell
            
        case 3:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customBorderButtonCell, for: indexPath) as! CustomBorderButtonCell
            
            cell.initViews(mode: .login,frame: CGRect(x: 0, y: 0, width: windowWidth - 40, height: 54))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            cell.onAction = { press in
                print("LOGIN")
            }
            return cell

        case 4:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.questionTextTableViewCell, for: indexPath) as! QuestionTextTableViewCell
            cell.initViews(mode: .register, question: "Don't have an account? ", frame: CGRect(x: 53, y: 0, width: 155, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            cell.onAction = { press in
                
                DispatchQueue.main.async {
                    let registerVC = RegisterViewController()
                    registerVC.modalPresentationStyle = .fullScreen
                    self.present(registerVC, animated: true)
                }
            }
            return cell
            
        case 5:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.orDividerTableViewCell, for: indexPath) as! orDividerTableViewCell
            cell.initViews()
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        case 6:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.socialMediaButtonCell, for: indexPath) as! socialMediaButtonsTableViewCell
            cell.initViews()
            cell.onAction = { button in
                if button.currentTitle != nil {
                    print(button.currentTitle!)
                }
            }
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            return cell
            
        default:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: Constants.customTextFieldCell, for: indexPath) as! CustomTextFieldTableViewCell
            
            cell.initViews(mode: .password, frame: CGRect(x: 0, y: 0, width: windowWidth, height: 21))
            cell.selectionStyle = .none
            cell.backgroundColor = .yellow
            return cell
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row{
        case 0:
            return 105
        case 1:
            return 86
        case 2:
            return 42
        case 3:
            return 73
        case 4:
            return 59
        case 5:
            return 33
        case 6:
            return 120
        default:
            return 105
        }
    }
    
    
}
