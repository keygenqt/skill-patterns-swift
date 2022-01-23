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

func validate() -> [String] {
    return Patterns.allCases.map { $0.rawValue }
}

class AppCommand: Command {
    
    let name: String = "-p"

    @Param var patterns: String
    
    let percentage = Input.readLine(
        prompt: "Pattern:",
        // validation: [.contains(Patterns.allCases.map { $0.rawValue })],
        errorResponse: { (input, reason) in
            Term.stderr <<< "'\(input)' is invalid; must be a number between 0 and 100"
        }
    )

    func execute() throws {
        stdout <<< "Hello \(patterns)!"
    }
}

let greeter = CLI(name: "patterns", version: "patterns 1.0", description: description)
greeter.commands = [AppCommand()]
greeter.go()
