//
//  ViewController.swift
//  UnitTestMVVM
//
//  Created by Atif on 15/08/2019.
//  Copyright © 2019 Atif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModels = [ViewModel]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        setupData()
    }
    
    func setupData() {
        let array = Utils.fakeData()
        viewModels = array.map({return ViewModel(model: $0)})
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        let vm = viewModels[indexPath.row]
        cell.vm = vm
        return cell
    }
}

