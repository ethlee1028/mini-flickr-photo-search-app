//
//  PhotoCollectionViewCell.swift
//  mini-flickr-photo-search-app
//
//  Created by Ethan Lee on 02/15/2021.
//  Copyright © 2020 Lonk Inc. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {

  let imageView: UIImageView = {
    let imageView = UIImageView()

    imageView.contentMode = .scaleAspectFit
    imageView.translatesAutoresizingMaskIntoConstraints = true

    return imageView
  }()

  override init(frame: CGRect) {
    super.init(frame: frame)

    imageView.frame = contentView.frame
    contentView.addSubview(imageView)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

