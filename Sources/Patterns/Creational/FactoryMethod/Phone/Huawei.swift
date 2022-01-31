//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 31.01.2022.
//

import Foundation

struct Huawei: IPhone {
    
    var cpu: ICPU = Kirin()
    
    func call() {
        print("\(cpu.work()) -> call huawei")
    }
}
