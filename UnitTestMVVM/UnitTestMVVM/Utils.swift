//
//  Utils.swift
//  UnitTestMVVM
//
//  Created by Atif on 18/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import UIKit

class Utils: NSObject {
    static func fakeData() -> Array<Model> {
        let atif = Model(id: 0, name: "Atif", count: 120)
        let naveed = Model(id: 1, name: "Naveed", count: 130)
        let abdullah = Model(id: 2, name: "Abdullah", count: 40)
        let ahmed = Model(id: 2, name: "Ahmed", count: 140)
        return [atif, naveed, abdullah, ahmed]
    }

}
