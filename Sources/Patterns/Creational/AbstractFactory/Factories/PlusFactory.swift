//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 30.01.2022.
//

import Foundation

struct PlusFactory: ShapeFactory {
    func createCircle() -> ICircle {
        return CirclePlus()
    }
    func createSquare() -> ISquare {
        return SquarePlus()
    }
}
