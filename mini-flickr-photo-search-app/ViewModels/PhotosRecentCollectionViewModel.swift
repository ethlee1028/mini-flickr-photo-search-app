//
//  PhotoPopularCollectionViewModel.swift
//  mini-flickr-photo-search-app
//
//  Created by Ethan Lee on 02/15/2021.
//  Copyright © 2020 Lonk Inc. All rights reserved.
//

import Foundation

class PhotosRecentCollectionViewModel: PhotosCollectionViewModel {

  // MARK: - Static Properties

  let reuseIdentifier = "PhotosRecentViewCell"

  let itemsPerPage = 30
  let itemsPerRow = 2
  let itemsPerSection = 10
  let itemsTreshold = 15

  // MARK: - Properties

  let photosRecentStore: PhotosRecentStore
  let navigationTitle: String

  var photosData: [Photo] = []
  var currentPage = 0
  var totalPages = 0

  // MARK: - Lifecycle

  init() {
    navigationTitle = "Recent"
    photosRecentStore = PhotosRecentStore()
  }

  // MARK: - Data Interaction

  func requestNextPhotosPage(completion:@escaping () -> ()) {
    currentPage += 1

    photosRecentStore.requestPhotos(page: currentPage, itemsPerPage: itemsPerPage) { (photos, metaData) in
      self.photosData.append(contentsOf: photos)

      self.currentPage = metaData["currentPage"] as! Int
      self.totalPages = metaData["totalPages"] as! Int

      completion()
    }
  }

}
