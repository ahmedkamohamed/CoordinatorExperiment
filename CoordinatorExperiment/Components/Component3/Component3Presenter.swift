//
//  Component3Presenter.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 11.12.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation


protocol Component3Presenter {
  func addNewCell(with text: String)
}

struct Component3PresenterImpl {
  let view: Component3View
  //var coordinator: Component3Coordinator?

  init(view: Component3View) {
    self.view = view
  }
}

extension Component3PresenterImpl: Component3Presenter {
  func addNewCell(with text: String) {
    view.addNewCell(with: text)
  }
}
