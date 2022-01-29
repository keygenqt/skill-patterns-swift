//
//  DeviceBuilder.swift
//  
//
//  Created by Виталий Зарубин on 29.01.2022.
//

import Foundation

class DeviceBuilder: IBuilder, ScopeFunc {
    
    // class for build
    private var device: Device = Device()

    // get result
    func getResult() -> Device {
        return device
    }

    // builders methods
    func setName(_ value: String) {
        device.name = value
    }
    
    func setOs(_ value: DeviceOS) {
        device.os = value
    }
    
    func setCpu(_ value: DeviceCPU) {
        device.cpu = value
    }
    
    func setType(_ value: DeviceType) {
        device.type = value
    }
}
