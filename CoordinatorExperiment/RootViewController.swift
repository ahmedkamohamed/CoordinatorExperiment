//
//  RootViewController.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
  required init() {
    super.init(nibName: NSStringFromClass(RootViewController.self).components(separatedBy: (".")).last!, bundle: nil)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func goToMainScreenClicked(_ sender: Any) {
    presentScene1()
  }
}

extension RootViewController {
  func presentScene1() {
    present(
      Scene1Factory.buildScene1(),
      animated: true,
      completion: nil
    )
  }
}
