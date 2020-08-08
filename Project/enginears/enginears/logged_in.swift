//
//  logged_in.swift
//  enginears
//
//  Created by Connie Tran on 3/16/20.
//  Copyright © 2020 Connie Tran. All rights reserved.
//

import SwiftUI


struct logged_in: View {
    var body: some View {
        NavigationView {
            List {
                Text ("Schedule")
                Text ("Students Who Match You")
                Text ("Lab Forums")
                Text ("Study Groups")
                Text ("Engineering News and Events")
            }
            .navigationBarTitle(Text("EngiNears Home"))
        }
    }
}
struct logged_in_Previews: PreviewProvider {
    static var previews: some View {
        logged_in()
    }
}
