//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 31.01.2022.
//

import Foundation

struct Samsung: IPhone {
    
    var cpu: ICPU = Snapdragon()
    
    func call() {
        print("\(cpu.work()) -> call samsung")
    }
}
