//
//  Patterns.swift
//  
//
//  Created by Виталий Зарубин on 23.01.2022.
//

import Foundation
import SwiftCLI

enum Patterns: String, CaseIterable, ConvertibleFromString {
    // Behavioral
    case chainOfResponsibility = "Chain of Responsibility"
    case command = "Command"
    case interpreter = "Interpreter"
    case iterator = "Iterator"
    case mediator = "Mediator"
    case memento = "Memento"
    case observer = "Observer"
    case state = "State"
    case strategy = "Strategy"
    case templateMethod = "Template Method"
    case visitor = "Visitor"
    // Creational
    case abstractFactory = "Abstract Factory"
    case builder = "Builder"
    case factoryMethod = "Factory Method"
    case prototype = "Prototype"
    case singleton = "Singleton"
    // Structural
    case adapter = "Adapter"
    case bridge = "Bridge"
    case composite = "Composite"
    case decorator = "Decorator"
    case facade = "Facade"
    case flyweight = "Flyweight"
    case proxy = "Proxy"
}
