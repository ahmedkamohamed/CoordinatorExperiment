//
//  MainSceneRouter.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation
import UIKit

protocol Router {
  var navigationController: UINavigationController { get set }
  func presentScene()
}

struct MainSceneRounter: Router {
  var navigationController: UINavigationController
  let mainViewControllerClassName = "MainSceneViewController"

  func presentScene() {
    // load our storyboard
    let storyboard = UIStoryboard(name: "MainSceneStoryboard", bundle: nil)

    // instantiate a view controller with that identifier, and force cast as the type that was requested
    navigationController.pushViewController(
      storyboard.instantiateViewController(
        withIdentifier: mainViewControllerClassName
      ) as! MainSceneViewController,
      animated: true
    )
  }
}
