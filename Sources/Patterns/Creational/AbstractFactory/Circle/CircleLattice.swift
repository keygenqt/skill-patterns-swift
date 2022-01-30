//
//  CircleLattice.swift
//  
//
//  Created by Виталий Зарубин on 30.01.2022.
//

import Foundation

struct CircleLattice: ICircle {
    func draw() {
        print("""
...........#...........
.........#####.........
......###########......
...#################...
.#####################.
...#################...
......###########......
.........#####.........
...........#...........
""")
    }
}