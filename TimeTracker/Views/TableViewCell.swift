//
//  TableViewCell.swift
//  TimeTracker
//
//  Created by Steph Ananth on 7/7/20.
//  Copyright © 2020 Steph K. Ananth. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - Fields

    // MARK: Outlets

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var categoryView: UIView!

    // MARK: - Methods

    // MARK: Override Methods

    override func awakeFromNib() {
        Logger.log(className: "TableViewCell", methodName: "awakeFromNib")
        super.awakeFromNib()
        configureCategoryView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        Logger.log(className: "TableViewCell", methodName: "setSelected(selected: \(selected), animated: \(animated))")
        super.setSelected(selected, animated: animated)
    }

    // MARK: - Private Helpers

    private func configureCategoryView() {
        Logger.log(className: "TableViewCell", methodName: "configureCategoryView")
        categoryView.layer.cornerRadius = categoryView.frame.height / 2
        categoryView.backgroundColor = Bool.random() ? .systemRed : .systemBlue
    }
}
