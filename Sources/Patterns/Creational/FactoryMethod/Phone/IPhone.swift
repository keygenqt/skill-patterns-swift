//
//  IPhone.swift
//  
//
//  Created by Виталий Зарубин on 31.01.2022.
//

import Foundation

protocol IPhone {
    var cpu: ICPU { get }
    func call()
}
