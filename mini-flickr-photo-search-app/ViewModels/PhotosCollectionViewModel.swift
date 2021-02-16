//
//  PhotoCollectionViewModel.swift
//  mini-flickr-photo-search-app
//
//  Created by Ethan Lee on 02/15/2021.
//  Copyright © 2020 Lonk Inc. All rights reserved.
//

import Foundation

protocol PhotosCollectionViewModel {

  var reuseIdentifier: String { get }

  var itemsPerPage: Int { get }
  var itemsPerRow: Int { get }
  var itemsPerSection: Int { get }
  var itemsTreshold: Int { get }

  var navigationTitle: String { get }

  var photosData: [Photo] { get set }
  var currentPage: Int { get set }
  var totalPages: Int { get set }

  func requestNextPhotosPage(completion:@escaping () -> ())

}
