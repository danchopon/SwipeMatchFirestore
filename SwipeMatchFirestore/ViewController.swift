//
//  ViewController.swift
//  SwipeMatchFirestore
//
//  Created by Daniyar Erkinov on 4/5/19.
//  Copyright © 2019 Daniyar Erkinov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let topStackView = TopNavigationStackView()
  let blueView = UIView()
  let buttonsStackView = HomeBottomControlsStackView()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    blueView.backgroundColor = .blue
    setupLayout()
  }
  
  //MARK:- Fileprivate
  fileprivate func setupLayout() {
    let overallStackView = UIStackView(arrangedSubviews: [topStackView, blueView, buttonsStackView])
    overallStackView.axis = .vertical
    
    view.addSubview(overallStackView)
    overallStackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
  }
}

