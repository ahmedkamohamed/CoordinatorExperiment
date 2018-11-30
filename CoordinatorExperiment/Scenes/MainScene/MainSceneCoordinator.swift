//
//  MainCoordinator.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import Foundation

protocol Presenter {

}

protocol Coordinator {

}

struct MainSceneCoordinator: Coordinator {
  let mainPresenter: Presenter
  let componentPresenters: [Presenter]
}
