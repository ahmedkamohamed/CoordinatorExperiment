//
//  MainCoordinator.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation

class Scene1Coordinator {
  let mainPresenter: Scene1Presenter
  var component1Presenter: Component1Presenter?
  var component2Presenter: Component2Presenter?

  init(mainPresenter: Scene1Presenter, component1Presenter: Component1Presenter) {
    self.mainPresenter = mainPresenter
    self.component1Presenter = component1Presenter
  }
}

extension Scene1Coordinator: MainCoordinator {

}

extension Scene1Coordinator: Component1Coordinator {
  func component1TextFieldUpdated(text: String) {
    component2Presenter?.updateTextField(text: text)
  }
}

extension Scene1Coordinator: Component2Coordinator {
  func component2TextFieldUpdated(text: String) {
    component1Presenter?.updateTextField(text: text)
  }
}
