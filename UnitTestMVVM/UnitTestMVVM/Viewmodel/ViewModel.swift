//
//  ViewModel.swift
//  UnitTestMVVM
//
//  Created by Atif on 15/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import Foundation
import UIKit

struct ViewModel {
    static let COUNT = 100
    let name: String
    let detail: String
    let accessoryType: UITableViewCell.AccessoryType
    init(model: Model) {
        self.name = model.name
        if model.count > ViewModel.COUNT {
            detail = "Count is greater than \(ViewModel.COUNT)"
            //accessoryType = .detailDisclosureButton
            accessoryType = .disclosureIndicator
        }else {
            detail = "Number of items are: \(model.count)"
            accessoryType = .none
        }
    }
}
