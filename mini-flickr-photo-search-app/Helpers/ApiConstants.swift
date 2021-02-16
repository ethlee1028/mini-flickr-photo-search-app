//
//  ApiConstants.swift
//  mini-flickr-photo-search-app
//
//  Created by Ethan Lee on 02/15/2021.
//  Copyright © 2020 Lonk Inc. All rights reserved.
//

import Foundation

final class ApiConstants: NSObject {

  // MARK: - Shared Instance

  static let shared = ApiConstants()

  // MARK: - Local Variable

  let apiKey: String
  let apiSecret: String

  // MARK: - Lifecycle
  override init() {
    guard let path = Bundle.main.path(forResource: "Configuration", ofType: "plist") else {
      fatalError("You probably forgot to add a configuration file.. (see: SupportingFiles/Configuration.plist.example)")
    }

    guard let configDictionary = NSDictionary(contentsOfFile: path) else {
      fatalError("Something went wrong when loading configurion file..")
    }

    guard let apiKey = configDictionary["apiKey"] as? String,
      let apiSecret = configDictionary["apiSecret"] as? String else {
        fatalError("Something went wrong when loading apiKey/apiSecret..")
    }

    self.apiKey = apiKey
    self.apiSecret = apiSecret
  }

}
