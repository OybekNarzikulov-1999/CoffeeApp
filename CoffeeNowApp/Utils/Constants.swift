//
//  Constants.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 17/10/22.
//

import UIKit


class Constants{
    
    
    static var customTextFieldCell = "CustomTextFieldTableViewCell"
    
}


enum LogoType {
    case login
    case register
    case addressSetup
    case forgorPassword
    
    
    var title: String? {
        
        switch self {
            
        case .login: return "LOGIN"
        case .register: return "REGISTER"
        case .addressSetup: return "ADDRESS SETUP"
        case .forgorPassword: return "FORGOT PASSWORD"
            
        }
    }
}


enum TextFieldType {
    
    case email
    case password
    case fullName
    case phoneNumber
    
    var title: String? {
        
        switch self {
            
        case .email: return "Email"
        case .password: return "Password"
        case .fullName: return "Fullname"
        case .phoneNumber: return "Phone Number"
            
        }
    }
    
    var placeholder: String? {
        switch self {
            
        case .email: return "exmpl@mail.com"
        case .password: return "*****"
        case .fullName: return "Jason Ranti"
        case .phoneNumber: return "+99 999 99 99"
            
        }
    }
    
}
