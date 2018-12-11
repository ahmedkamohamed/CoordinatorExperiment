//
//  Scene1Factory.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 30.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation
import UIKit

struct Scene1Factory {
  static func buildScene1() -> UINavigationController {
    let mainViewControllerClassName = "Scene1ViewController"
    let storyboard = UIStoryboard(name: "Scene1", bundle: nil)
    let scene1Controller = storyboard.instantiateViewController(
      withIdentifier: mainViewControllerClassName
    ) as! Scene1ViewController
    let scene1NavigationController = UINavigationController(
      rootViewController: scene1Controller
    )

    return scene1NavigationController
  }
}
