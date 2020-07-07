//
//  ViewController.swift
//  TimeTracker
//
//  Created by Steph Ananth on 7/6/20.
//  Copyright © 2020 Steph K. Ananth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Fields
    var viewModel = ViewModel()

    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Methods

    // MARK: Override Methods

    override func viewDidLoad() {
        Logger.log(className: "ViewController", methodName: "viewDidLoad")
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "entity_cell")
    }

    override func viewDidAppear(_ animated: Bool) {
        Logger.log(className: "ViewController", methodName: "viewDidAppear(animated: \(animated))")
        super.viewDidAppear(animated)
        presentAlertRepeatedly(intervalMinutes: 1)
    }

    // MARK: Private Helpers

    private func presentAlertRepeatedly(intervalMinutes: Int) {
        Logger.log(className: "ViewController",
                   methodName: "presentAlertRepeatedly(intervalMinutes: \(intervalMinutes))")
        createAndPresentAlert()
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(intervalMinutes * 60), execute: {
            self.presentAlertRepeatedly(intervalMinutes: intervalMinutes)
        })
    }

    private func createAndPresentAlert() {
        Logger.log(className: "ViewController", methodName: "createAndPresentAlert")
        let alertController = UIAlertController(title: "What are you doing right now?", message: nil,
                                                preferredStyle: .alert)
        let doneAction = UIAlertAction(title: "done", style: .default) { _ in
            guard let text = alertController.textFields?.first?.text else {
                Logger.log(className: "ViewController", methodName: "createAndPresentAlert",
                           message: "alertController.textFields == nil")
                return
            }
            Logger.log(className: "ViewController", methodName: "createAndPresentAlert", message: "text: \(text)")
            self.viewModel.entries.append(Entry(time: Date(), name: text))
            self.tableView.reloadData()
        }
        alertController.addAction(doneAction)
        alertController.addTextField { $0.clearButtonMode = .always }
        dismiss(animated: false, completion: nil)
        present(alertController, animated: true, completion: nil)
    }
}
