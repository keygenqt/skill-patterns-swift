//
//  CirclePlus.swift
//  
//
//  Created by Виталий Зарубин on 30.01.2022.
//

import Foundation

struct CirclePlus: ICircle {
    func draw() {
        print("""
...........+...........
.........+++++.........
......+++++++++++......
...+++++++++++++++++...
.+++++++++++++++++++++.
...+++++++++++++++++...
......+++++++++++......
.........+++++.........
...........+...........
""")
    }
}
