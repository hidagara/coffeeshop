//
//  StoreCollectionViewCell.swift
//  coffeeshop
//
//  Created by Roman Guseynov on 20.02.2020.
//  Copyright © 2020 Roman Guseynov. All rights reserved.
//

import UIKit

class StoreCollectionViewCell: UICollectionViewCell {
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    let button = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
    button.setTitle("Holla", for: .normal)
    self.contentView.addSubview(button)
  }
  
}
