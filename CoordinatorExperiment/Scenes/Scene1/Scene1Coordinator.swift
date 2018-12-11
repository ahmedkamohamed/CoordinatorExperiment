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
  var component3Presenter: Component3Presenter?

  init(
    mainPresenter: Scene1Presenter,
    component1Presenter: Component1Presenter?,
    component3Presenter: Component3Presenter?
    ) {
    self.mainPresenter = mainPresenter
    self.component1Presenter = component1Presenter
    self.component3Presenter = component3Presenter
  }
}

extension Scene1Coordinator: MainCoordinator {

}

extension Scene1Coordinator: Component1Coordinator {
  func component1TextFieldUpdated(text: String) {
    component2Presenter?.updateTextField(text: text)
    component3Presenter?.addNewCell(with: text)
  }
}

extension Scene1Coordinator: Component2Coordinator {
  func component2TextFieldUpdated(text: String) {
    component1Presenter?.updateTextField(text: text)
  }
}
