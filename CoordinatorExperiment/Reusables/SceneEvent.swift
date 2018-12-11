//
//  SceneEvent.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 10.12.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation

struct Event: CoordinatorEvent {
  enum Name: String {
    case event1
  }

  var name: Name

  func getName() -> String {
    return name.rawValue
  }
}

protocol CoordinatorEvent {
  func getName() -> String
}


protocol SceneEvent {

}
