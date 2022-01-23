//
//  File.swift
//  
//
//  Created by Виталий Зарубин on 23.01.2022.
//

import Foundation

protocol IRunner {
    func run()
}

func getRunner(pattern: Patterns) -> IRunner {
    switch pattern {
    case .chainOfResponsibility: return RunnerChainOfResponsibility()
    case .command: return RunnerCommand()
    case .interpreter: return RunnerInterpreter()
    case .iterator: return RunnerIterator()
    case .mediator: return RunnerMediator()
    case .memento: return RunnerMemento()
    case .observer: return RunnerObserver()
    case .state: return RunnerState()
    case .strategy: return RunnerStrategy()
    case .templateMethod: return RunnerTemplateMethod()
    case .visitor: return RunnerVisitor()
    case .abstractFactory: return RunnerAbstractFactory()
    case .builder: return RunnerBuilder()
    case .factoryMethod: return RunnerFactoryMethod()
    case .prototype: return RunnerPrototype()
    case .singleton: return RunnerSingleton()
    case .adapter: return RunnerAdapter()
    case .bridge: return RunnerBridge()
    case .composite: return RunnerComposite()
    case .decorator: return RunnerDecorator()
    case .facade: return RunnerFacade()
    case .flyweight: return RunnerFlyweight()
    case .proxy: return RunnerProxy()
    }
}
