//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 30.01.2022.
//

import Foundation

struct LatticeFactory: ShapeFactory {
    func createCircle() -> ICircle {
        return CircleLattice()
    }
    func createSquare() -> ISquare {
        return SquareLattice()
    }
}
