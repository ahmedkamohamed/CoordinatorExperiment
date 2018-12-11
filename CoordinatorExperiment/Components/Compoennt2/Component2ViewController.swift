//
//  Component2ViewController.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import UIKit


protocol Component2View {
 func updateTextField(text: String)
}

class Component2ViewController: UIViewController {
  @IBOutlet weak var inputTextField: UITextField!
  lazy var presenter: Component2PresenterImpl = {
    return Component2PresenterImpl(view: self)
  }()

  required init(nibName: String, bundle: Bundle?) {
    super.init(nibName: NSStringFromClass(Component2ViewController.self).components(separatedBy: (".")).last!, bundle: nil)
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    self.inputTextField.delegate = self
    self.inputTextField.becomeFirstResponder()
    self.presenter.onViewDidLoad()
  }
}

extension Component2ViewController: UITextFieldDelegate {
  func textFieldDidEndEditing(_ textField: UITextField) {
    presenter.onTextChanged(text: textField.text)
  }
}

extension Component2ViewController: Component2View {
  func updateTextField(text: String) {
    inputTextField.text = text
  }
}

