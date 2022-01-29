//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 29.01.2022.
//

import Foundation

class Singleton {
    
    let value: String
    
    private static var instance: Singleton = {
           return Singleton(value: "value")
       }()

    private init(value: String) {
        print("Init Singleton")
        self.value = value
    }
    
    class func getInstance() -> Singleton {
        return instance
    }
}
