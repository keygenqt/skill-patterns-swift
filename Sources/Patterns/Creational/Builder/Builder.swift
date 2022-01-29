//
//  Builder.swift
//  
//
//  Created by Виталий Зарубин on 29.01.2022.
//

import Foundation

protocol IBuilder {
    func setName(_ value: String)
    func setOs(_ value: DeviceOS)
    func setCpu(_ value: DeviceCPU)
    func setType(_ value: DeviceType)
}
