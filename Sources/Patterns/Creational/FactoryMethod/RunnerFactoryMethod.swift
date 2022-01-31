//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 23.01.2022.
//

import Foundation

struct RunnerFactoryMethod: IRunner {
    func run() {
        // random type
        let type = ["Huawei", "Samsung"].randomElement()
        // get phone
        let phone: IPhone = (type == "Huawei" ? Huawei() : Samsung())
        // call phone
        phone.call()
    }
}
