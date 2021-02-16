//
//  SearchViewModel.swift
//  mini-flickr-photo-search-app
//
//  Created by Ethan Lee on 02/15/2021.
//  Copyright © 2020 Lonk Inc. All rights reserved.
//

import Foundation

class SearchViewModel {

  static let reuseIdentifier = "SearchViewCell"

  let defaults = UserDefaults.standard
  let searchDataKey = "SearchDataKey"

  var searchData: [String] = []

  func retrieveInitialSearchData(completion: () -> ()) {
    if let data = defaults.object(forKey: searchDataKey) {
      searchData = data as! [String]
    }

    completion()
  }

  func saveSearch(text: String, completion: () -> ()) {
    let uniqueSearchData = searchData.filter { $0.lowercased() != text.lowercased() }

    searchData = uniqueSearchData
    searchData.insert(text, at: 0)

    defaults.set(searchData, forKey: searchDataKey)
    defaults.synchronize()

    completion()
  }

}
