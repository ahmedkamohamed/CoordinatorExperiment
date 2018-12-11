//
//  MainViewPresenter.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation


protocol MainCoordinator {

}

protocol Scene1Presenter {
  func onDidLoad()
  func onGoToCompoenent2Clicked()
  func updateTextField1(text: String)
}

struct Scene1PresenterImpl {
  var view: Scene1View
  var coordinator: MainCoordinator?
  //var router: Scene1Rounter?

  init(view: Scene1View) {
    self.view = view
    //self.router = Scene1RounterImp(navigationController: viewController.navigationController)
  }
}

extension Scene1PresenterImpl: Scene1Presenter {
  func updateTextField1(text: String) {
    print(text)
  }

  func onDidLoad() {
    
  }

  func onGoToCompoenent2Clicked() {
    view.pushComponent2()
  }
}
