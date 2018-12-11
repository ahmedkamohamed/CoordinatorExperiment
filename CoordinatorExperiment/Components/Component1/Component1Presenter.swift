//
//  Component1Presenter.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation

protocol Component1Coordinator {
  func component1TextFieldUpdated(text: String)
}

protocol Component1Presenter {
  func updateTextField(text: String)
  func onTextChanged(text: String?)
}

struct Component1PresenterImpl {
  let view: Component1View
  var coordinator: Component1Coordinator?

  init(view: Component1View) {
    self.view = view
  }
}

extension Component1PresenterImpl: Component1Presenter {
  func updateTextField(text: String) {
    view.updateTextField(text: text)
  }

  func onTextChanged(text: String?) {
    coordinator?.component1TextFieldUpdated(text: text ?? "testing" )
  }
}
