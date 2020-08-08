//
//  CircleImage.swift
//  enginears
//
//  Created by Connie Tran on 3/16/20.
//  Copyright © 2020 Connie Tran. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
    Image("sjsu-tower-hall-BCramer-SJSU6223-4-10-170-2el266z")
        .clipShape(Circle())
        .overlay(Circle().stroke(Color(red: 0.9, green: 0.66, blue: 0.14, opacity: 1.0), lineWidth: 4))
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
