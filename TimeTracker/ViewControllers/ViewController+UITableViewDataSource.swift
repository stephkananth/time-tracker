//
//  ViewController+UITableViewDataSource.swift
//  TimeTracker
//
//  Created by Steph Ananth on 7/7/20.
//  Copyright © 2020 Steph K. Ananth. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Logger.log(className: "ViewController+UITableViewDataSource", methodName: "numberOfRowsInSection",
                   message: "section: \(section)")
        return viewModel.entries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        Logger.log(className: "ViewController+UITableViewDataSource", methodName: "cellForRowAt",
                   message: "indexPath: \(indexPath)")
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "entity_cell",
                                                       for: indexPath) as? TableViewCell else {
                                                        return UITableViewCell()
        }
        let entity = viewModel.entries[indexPath.row]
        cell.timeLabel.text = entity.getTimeString()
        cell.nameLabel.text = entity.name
        return cell
    }
}
