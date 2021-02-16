//
//  NavigationController.swift
//  mini-flickr-photo-search-app
//
//  Created by Ethan Lee on 02/15/2021.
//  Copyright © 2020 Lonk Inc. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

  // MARK: - View LifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()

    configureNavigationBarStyling()
  }

  private func configureNavigationBarStyling() {
    navigationBar.barStyle = .black
    navigationBar.isTranslucent = true

    navigationBar.barTintColor = Color.primaryColor
    navigationBar.tintColor = Color.secondaryColor
  }

}
