//
//  Component3ViewController.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 11.12.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation
import UIKit

protocol Component3View {
  func addNewCell(with text: String)
}

class Component3ViewController: UIViewController {
  @IBOutlet lazy var tableView: UITableView! = {
    return UITableView()
  }()
  lazy var presenter: Component3PresenterImpl = {
    return Component3PresenterImpl(view: self)
  }()
  var numberOfCells = 1
  var textArray = ["Test"]

  override func viewDidLoad() {

  }
  override func viewDidLayoutSubviews() {
    view.addSubview(tableView)
    tableView.pinToSuperView()
    tableView.delegate = self
    tableView.dataSource = self
    registerTableViewCells()
  }
}

extension Component3ViewController: UITableViewDelegate, UITableViewDataSource {
  private func registerTableViewCells() {
    tableView.register(
      UINib(nibName: "Component3Cell1", bundle: nil),
      forCellReuseIdentifier: "Component3Cell1"
    )
  }

  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return numberOfCells
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Component3Cell1") ?? UITableViewCell.init()
    cell.textLabel?.text = textArray[indexPath.row]

    return cell
  }

}

extension UIView {
  func pinToSuperView() {
    guard let superview = superview else {
      fatalError("View has no superview")
    }
    self.translatesAutoresizingMaskIntoConstraints = false
    superview.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
    superview.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
    superview.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    superview.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
  }
}

extension Component3ViewController: Component3View {
  func addNewCell(with text: String) {
    numberOfCells += 1
    textArray.append(text)
    tableView.reloadData()
  }
}
