//
//  Store.swift
//  mini-flickr-photo-search-app
//
//  Created by Ethan Lee on 02/15/2021.
//  Copyright © 2020 Lonk Inc. All rights reserved.
//

import Alamofire
import SwiftyJSON

class Store {

  // MARK: - Properties

  let baseURL = "https://api.flickr.com/services/rest/"
  let format = "&format=json&nojsoncallback=1"

  let method: String

  // MARK: - Lifecycle

  init(method: String) {
    self.method = method
  }

  // MARK: - API Requests

  func getRequest(parameters: String, completion:@escaping (JSON) -> ()) {
    let apiKey = ApiConstants.shared.apiKey
    let url = baseURL + "?method=\(method)\(format)\(parameters)&api_key=\(apiKey)"

    Alamofire.request(url, method: .get).validate().responseJSON { response in
      switch response.result {
        case .success(let value):
          completion(JSON(value))
        case .failure(let error):
          print("Failed request with given url: \(url)", error)
          completion(JSON.null)
      }
    }
  }

}

