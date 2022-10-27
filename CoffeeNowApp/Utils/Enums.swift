//
//  Enums.swift
//  CoffeeNowApp
//
//  Created by Oybek Narzikulov on 25/10/22.
//

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
    case addressLine1
    case addressLine2
    case zipCode
    case city
    case country
    
    var title: String? {
        
        switch self {
            
        case .email: return "Email"
        case .password: return "Password"
        case .fullName: return "Fullname"
        case .phoneNumber: return "Phone Number"
        case .addressLine1: return "Address Line 1"
        case .addressLine2: return "Address Line 2"
        case .zipCode: return "ZIP Code"
        case .city: return "City"
        case .country: return "Country"
            
        }
    }
    
    var placeholder: String? {
        switch self {
            
        case .email: return "exmpl@mail.com"
        case .password: return "*********"
        case .fullName: return "Jason Ranti"
        case .phoneNumber: return "+99 999 99 99"
        case .addressLine1: return "Address"
        case .addressLine2: return "Address"
        case .zipCode: return "0231"
        case .city: return "Jakarta"
        case .country: return "Country"
            
        }
    }
    
}


enum YellowButtonText {
    
    case forgotPassword
    case register
    case login
    
    var name: String? {
        
        switch self {
            
        case .forgotPassword: return "Forgot Password ?"
        case .login: return "Login"
        case .register: return "Register"
            
        }
        
    }
    
}

enum BorderButtonText {
    case login
    case register
    case addAddress
    case resetPassword
    
    var title: String? {
        
        switch self {
            
        case .login: return "LOGIN"
        case .register: return "REGISTER"
        case .addAddress: return "ADD ADDRESS"
        case .resetPassword: return "RESET PASSWORD"
            
        }
    }
}
