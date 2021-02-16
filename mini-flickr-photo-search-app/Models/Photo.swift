//
//  Photo.swift
//  mini-flickr-photo-search-app
//
//  Created by Ethan Lee on 02/15/2021.
//  Copyright © 2020 Lonk Inc. All rights reserved.
//

import SwiftyJSON

class Photo: Model {

  private let farm: Int
  private let server: Int
  private let id: Int
  private let secret: String
  private let title: String

  required init(values: JSON) {
    self.farm = values["farm"].intValue
    self.server = values["server"].intValue
    self.id = values["id"].intValue
    self.secret = values["secret"].stringValue
    self.title = values["title"].stringValue
  }

}

extension Photo {

  func imageURL() -> String {
    return "https://farm\(farm).static.flickr.com/\(server)/\(id)_\(secret).jpg"
  }

}
