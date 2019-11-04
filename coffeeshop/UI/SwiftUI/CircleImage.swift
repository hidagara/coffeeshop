//
//  CircleImage.swift
//  coffeeshop
//
//  Created by Roman Guseynov on 04.11.2019.
//  Copyright © 2019 Roman Guseynov. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 15)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
