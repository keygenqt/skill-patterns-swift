//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 23.01.2022.
//

import Foundation

struct RunnerSingleton: IRunner {
    func run() {
        let singleton1 = Singleton.getInstance()
        print("getInstance() 1 \(singleton1.value)")
        let singleton2 = Singleton.getInstance()
        print("getInstance() 2 \(singleton2.value)")
        let singleton3 = Singleton.getInstance()
        print("getInstance() 3 \(singleton3.value)")
        let singleton4 = Singleton.getInstance()
        print("getInstance() 4 \(singleton4.value)")
    }
}
