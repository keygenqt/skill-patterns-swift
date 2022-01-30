//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 23.01.2022.
//

import Foundation

struct RunnerAbstractFactory: IRunner {
    func run() {
        // random type
        let type = ["plus", "lattice"].randomElement()
        // get factory
        let factory: ShapeFactory = type == "plus" ? PlusFactory() : LatticeFactory()
        // create shapes
        let circle = factory.createCircle()
        let square = factory.createSquare()
        // draw type circle
        circle.draw()
        // draw type square
        square.draw()
    }
}
