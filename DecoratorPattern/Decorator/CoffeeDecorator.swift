//
//  CoffeeDecorator.swift
//  DecoratorPattern
//
//  Created by Алексей Шинкарев on 01.04.2022.
//

import Foundation

protocol CoffeeDecorator: Coffee {
    var decorated: Coffee { get }
    init(decorated: Coffee)
}
