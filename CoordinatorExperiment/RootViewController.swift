//
//  RootViewController.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
  lazy var mainSceneRouter: MainSceneRounter = {
    return MainSceneRounter(navigationController: navigationController!)
  }()

  required init() {
    super.init(nibName: NSStringFromClass(RootViewController.self).components(separatedBy: (".")).last!, bundle: nil)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

  @IBAction func goToMainScreenClicked(_ sender: Any) {
    mainSceneRouter.presentScene()
  }

}
