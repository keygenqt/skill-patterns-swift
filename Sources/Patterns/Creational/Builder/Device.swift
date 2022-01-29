//
//  Device.swift
//  
//
//  Created by Виталий Зарубин on 29.01.2022.
//

import Foundation

enum DeviceCPU {
    case INTEL, AMD, M1, KIRIN
}

enum DeviceOS {
    case ANDROID, IOS, WINDOWS, LINUX, MACOS
}

enum DeviceType {
    case PHONE, PC, NOTEBOOK
}

struct Device {
    var name: String? = nil
    var cpu: DeviceCPU? = nil
    var os: DeviceOS? = nil
    var type: DeviceType? = nil
}
