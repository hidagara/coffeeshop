//
//  MenuView.swift
//  coffeeshop
//
//  Created by Roman Guseynov on 17.10.2019.
//  Copyright © 2019 Roman Guseynov. All rights reserved.
//

import UIKit

class MenuView: UIView {

    var menuCollectionView: UICollectionView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSubviews()
    }
    
    
    
    private func setupSubviews() {
        let flowLayout = UICollectionViewFlowLayout()
        self.menuCollectionView = UICollectionView(frame:  CGRect(x: 0, y: 0, width: self.bounds.width, height: 150), collectionViewLayout: flowLayout)
        self.menuCollectionView.backgroundColor = .green
        self.backgroundColor = .yellow
        self.addSubview(self.menuCollectionView)
    }
    
}
