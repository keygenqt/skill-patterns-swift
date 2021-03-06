//
//  ScopeFuncs.swift
//  
//
//  Created by Виталий Зарубин on 30.01.2022.
//

import Foundation

protocol ScopeFunc {}

extension ScopeFunc {
    @inline(__always) func apply(block: (Self) -> ()) -> Self {
        block(self)
        return self
    }
    @inline(__always) func letIt<R>(block: (Self) -> R) -> R {
        return block(self)
    }
}
