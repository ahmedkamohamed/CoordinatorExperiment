//
//  ViewController.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import UIKit

protocol Scene1View {
  func pushComponent2()
}

class Scene1ViewController: UIViewController {
  @IBOutlet weak var component1View: Component1View!
  var component3View: Component3ViewController?
  lazy var presenter: Scene1PresenterImpl = {
    return Scene1PresenterImpl(view: self)
  }()
  lazy var coordinator: Scene1Coordinator = {
    return Scene1Coordinator(
      mainPresenter: presenter,
      component1Presenter: component1View.presenter,
      component3Presenter: component3View?.presenter ?? nil
    )
  }()
  required init() {
    super.init(nibName: NSStringFromClass(Scene1ViewController.self).components(
      separatedBy: (".")).last!,
      bundle: nil
    )
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.onDidLoad()
  }

  override func viewDidLayoutSubviews() {
    presenter.coordinator = coordinator
    component1View.presenter.coordinator = coordinator
  }

  @IBAction func goToCompoenent2Clicked(_ sender: Any) {
    presenter.onGoToCompoenent2Clicked()
  }
}

extension Scene1ViewController: Scene1View {
  func pushComponent2() {
    let component2ViewController = Component2ViewController(
      nibName: String(describing: Component2ViewController.self),
      bundle: nil
    )
    component2ViewController.presenter.coordinator = coordinator
    coordinator.component2Presenter = component2ViewController.presenter
    navigationController?.pushViewController(component2ViewController, animated: true)
  }
}

extension Scene1ViewController {
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    switch segue.destination {

    case let vc as Component3ViewController:
      self.component3View = vc

    default:
      break
    }
  }
}
