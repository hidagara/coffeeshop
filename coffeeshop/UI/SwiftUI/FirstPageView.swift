//
//  FirstPageView.swift
//  coffeeshop
//
//  Created by Roman Guseynov on 04.11.2019.
//  Copyright © 2019 Roman Guseynov. All rights reserved.
//

import SwiftUI

struct FirstPageView: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack {
                Text("Store at Krasnaya Street")
                    .font(.title)
                HStack {
                    Text("Best coffeeshop")
                        .font(.subheadline)
                    Spacer()
                    Text("Take a coffee")
                }
            }
            .padding()
        }
        
    }
}

struct FirstPageView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPageView()
    }
}
