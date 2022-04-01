//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by Алексей Шинкарев on 01.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let blackCofee = SimpleCoffee()
        let milkCoffee = Milk(decorated: blackCofee)
        let sweetMilkCoffee = Milk(decorated: Sugar(decorated: SimpleCoffee()))
        let verySweetMilkCoffee = Sugar(decorated: sweetMilkCoffee)
        let irishCoffee = Honey(decorated: Whiskey(decorated: Cream(decorated: SimpleCoffee())))
        
        print("black coffee \(blackCofee.cost)")
        print("milk coffee \(milkCoffee.cost)")
        print("sweet milk coffee \(sweetMilkCoffee.cost)")
        print("very sweet milk coffee \(verySweetMilkCoffee.cost)")
        print("irish coffee \(irishCoffee.cost)")

    }


}

