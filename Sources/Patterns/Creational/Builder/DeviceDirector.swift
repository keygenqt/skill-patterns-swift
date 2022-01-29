//
//  DeviceDirector.swift
//  
//
//  Created by Виталий Зарубин on 30.01.2022.
//

import Foundation

class DeviceDirector {
    static func createAppleNoteBook<T : IBuilder>(name: String, _ builder: T) -> T {
        
        builder.setName(name)
        builder.setCpu(DeviceCPU.M1)
        builder.setOs(DeviceOS.MACOS)
        builder.setType(DeviceType.NOTEBOOK)
        
        return builder
    }
    
    static func createHuaweiPhone<T : IBuilder>(name: String, _ builder: T) -> T {
        
        builder.setName(name)
        builder.setCpu(DeviceCPU.KIRIN)
        builder.setOs(DeviceOS.ANDROID)
        builder.setType(DeviceType.PHONE)
        
        return builder
    }
}
