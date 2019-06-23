//
//  ContentView.swift
//  SwiftUIExploration
//
//  Created by Sebastian Bohmann on 23.06.19.
//  Copyright © 2019 Sebastian Bohmann. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        Text("Hello World")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
