//
//  Patterns.swift
//
//
//  Created by Виталий Зарубин on 23.01.2022.
//

import SwiftCLI

let description = """
Examples of Reusable Design Patterns:
* "\(Patterns.chainOfResponsibility.rawValue)"
* "\(Patterns.command.rawValue)"
* "\(Patterns.interpreter.rawValue)"
* "\(Patterns.iterator.rawValue)"
* "\(Patterns.mediator.rawValue)"
* "\(Patterns.memento.rawValue)"
* "\(Patterns.observer.rawValue)"
* "\(Patterns.state.rawValue)"
* "\(Patterns.strategy.rawValue)"
* "\(Patterns.templateMethod.rawValue)"
* "\(Patterns.visitor.rawValue)"
* "\(Patterns.abstractFactory.rawValue)"
* "\(Patterns.builder.rawValue)"
* "\(Patterns.factoryMethod.rawValue)"
* "\(Patterns.prototype.rawValue)"
* "\(Patterns.singleton.rawValue)"
* "\(Patterns.adapter.rawValue)"
* "\(Patterns.bridge.rawValue)"
* "\(Patterns.composite.rawValue)"
* "\(Patterns.decorator.rawValue)"
* "\(Patterns.facade.rawValue)"
* "\(Patterns.flyweight.rawValue)"
* "\(Patterns.proxy.rawValue)"
"""

class AppCommand: Command {
    
    let name = "pattern"
    
    @Param var volume: Patterns
    
    func execute() throws {
        getRunner(pattern: volume).run()
    }
}

let greeter = CLI(name: "patterns", version: "patterns 1.0", description: description)
greeter.commands = [AppCommand()]
greeter.go()
