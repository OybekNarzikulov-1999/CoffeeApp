//
//  ExampleController.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 23/10/22.
//

import UIKit

class ExampleController: UIViewController {
    
    private lazy var logoView: LogoBrandView = {
        
        let mainView = LogoBrandView(frame: CGRect(x: 0, y: 60, width: windowWidth, height: 80))
        mainView.initViews(mode: .forgorPassword)
        mainView.backgroundColor = .white

        return mainView
    }()
    
    

    private lazy var tableView: UITableView = {
       
        let tableView = UITableView(frame: CGRect(x: 0, y: logoView.frame.maxY + 20, width: windowWidth, height: windowHieight - logoView.frame.height))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomButtonCell.self, forCellReuseIdentifier: "CustomButtonCell")
        tableView.separatorStyle = .none
        return tableView
        
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initSetups()
    }
    
    
    func initSetups() {
        view.backgroundColor = .white
        view.addSubview(logoView)
        view.addSubview(tableView)
    }
}


extension ExampleController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomButtonCell", for: indexPath) as! CustomButtonCell
        
        cell.initViews(frame: CGRect(x: 20, y: 0, width: windowWidth - 40, height: 52))
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        cell.onAction = { press in
            print("Oybek")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            60
    }
    
}
