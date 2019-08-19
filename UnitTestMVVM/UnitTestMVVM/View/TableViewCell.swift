//
//  TableViewCell.swift
//  UnitTestMVVM
//
//  Created by Atif on 15/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var vm: ViewModel! {
        didSet {
            textLabel?.text = vm.name
            detailTextLabel?.text = vm.detail
            accessoryType = vm.accessoryType
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
