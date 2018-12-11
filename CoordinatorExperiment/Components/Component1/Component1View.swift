//
//  Component1View.swift
//  CoordinatorExperiment
//
//  Created by Ahmed Khaled Abdelhameed Mohamed on 29.11.18.
//  Copyright © 2018 Ahmed Khaled Mohamed. All rights reserved.
//

import UIKit

class Component1View: UIView {
  @IBOutlet var view: UIView!
  @IBOutlet weak var textField: UITextField!
  lazy var presenter: Component1PresenterImpl = {
    return Component1PresenterImpl(view: self)
  }()

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    loadViewFromNib()
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    loadViewFromNib()
  }

  private func loadViewFromNib() {
    let bundle = Bundle(for: self.classForCoder)
    bundle.loadNibNamed("Component1View", owner: self, options: nil)
    addSubview(view)
    textField.delegate = self
  }
}

extension Component1View: UITextFieldDelegate {
  func textFieldDidEndEditing(_ textField: UITextField) {
    presenter.onTextChanged(text: textField.text)
  }
}

extension Component1View {
  func updateTextField(text: String) {
    textField.text = text
  }
}
