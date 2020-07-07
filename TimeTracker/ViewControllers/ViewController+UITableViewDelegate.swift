//
//  ViewController+UITableViewDelegate.swift
//  TimeTracker
//
//  Created by Steph Ananth on 7/7/20.
//  Copyright © 2020 Steph K. Ananth. All rights reserved.
//

import UIKit

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}
