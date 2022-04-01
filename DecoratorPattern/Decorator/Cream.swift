//
//  Cream.swift
//  DecoratorPattern
//
//  Created by Алексей Шинкарев on 01.04.2022.
//

import Foundation

class Cream: CoffeeDecorator {
    let decorated: Coffee
    var cost: Int { decorated.cost + 40 }

    required init(decorated: Coffee) {
        self.decorated = decorated
    }
}
