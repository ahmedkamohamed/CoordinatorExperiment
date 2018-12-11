//
//  Component2Presenter.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation

protocol Component2Coordinator {
  func component2TextFieldUpdated(text: String)
}

protocol Component2Presenter {
  func onViewDidLoad()
  func onTextChanged(text: String?)
  func updateTextField(text: String)
}

struct Component2PresenterImpl {
  var coordinator: Component2Coordinator?
  private let view: Component2View

  init(view: Component2View) {
    self.view = view
  }
}

extension Component2PresenterImpl: Component2Presenter {
  func onViewDidLoad() {

  }

  func updateTextField(text: String) {
    view.updateTextField(text: text)
  }

  func onTextChanged(text: String?) {
    coordinator?.component2TextFieldUpdated(text: text ?? "testing" )
  }
}
