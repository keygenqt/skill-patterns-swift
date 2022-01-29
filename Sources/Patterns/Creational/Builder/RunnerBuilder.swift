//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 23.01.2022.
//

import Foundation

struct RunnerBuilder: IRunner {
    func run() {
        // build phone
        let phone = DeviceBuilder().apply {
            $0.setName("Mate 30 Pro 5G")
            $0.setOs(DeviceOS.ANDROID)
            $0.setCpu(DeviceCPU.KIRIN)
            $0.setType(DeviceType.PHONE)
        }.getResult()
        
        print("phone: \(phone)")
        print("-----------------")
        
        // build pc
        let pc = DeviceBuilder().apply {
            $0.setName("MacBook Air M1")
            $0.setOs(DeviceOS.MACOS)
            $0.setCpu(DeviceCPU.M1)
            $0.setType(DeviceType.NOTEBOOK)
        }.getResult()

        print("pc: \(pc)")
        print("-----------------")
        
        // build phone
        let huawei = DeviceDirector.createHuaweiPhone(
            name: "Mate 30 Pro 5G", DeviceBuilder()
        ).getResult()
        
        print("huawei: \(huawei)")
        print("-----------------")
        
        // build noteBook
        let noteBook = DeviceDirector.createAppleNoteBook(
            name: "MacBook Air M1", DeviceBuilder()
        ).getResult()
        
        print("noteBook: \(noteBook)")
        print("-----------------")
    }
}
