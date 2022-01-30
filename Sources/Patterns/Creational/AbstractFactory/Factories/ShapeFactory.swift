//
//  ShapeFactory.swift
//  
//
//  Created by Виталий Зарубин on 30.01.2022.
//

import Foundation

protocol ShapeFactory {
    func createCircle() -> ICircle
    func createSquare() -> ISquare
}
