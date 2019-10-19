//
//  StoresView.swift
//  coffeeshop
//
//  Created by Roman Guseynov on 19.10.2019.
//  Copyright © 2019 Roman Guseynov. All rights reserved.
//

import UIKit

class StoresView: UIView {

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
           self.backgroundColor = .green
       }

}
