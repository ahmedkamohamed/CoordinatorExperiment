//
//  Scene1Router.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation
import UIKit


protocol Scene1Rounter {
  func push(component: UIViewController)
}

struct Scene1RounterImp: Scene1Rounter {
  let navigationController: UINavigationController?

  func push(component: UIViewController) {
//    let component2ViewController = Component2ViewController(
//      nibName: String(describing: Component2ViewController.self),
//      bundle: nil
//    )
    navigationController?.pushViewController(component, animated: true)
  }
}
