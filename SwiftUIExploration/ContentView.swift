//
//  ContentView.swift
//  SwiftUIExploration
//
//  Created by Sebastian Bohmann on 23.06.19.
//  Copyright © 2019 Sebastian Bohmann. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    let viewForType: ViewForType
    @State var state = 5
    // TODO create using getter and setter
    var secondState = Binding.constant(false)
    
    var body: some View {
        HStack {
            Text("Hello World")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            SpecialView(content: viewForType.create(type: 1, state: $state))
            viewForType.create(type: 1, state: $state)
            Toggle(isOn: secondState) {
                Text("The toggle")
            }
        }
    }
}

struct SpecialView<Content> : View where Content: View {
    typealias Body = Content
    var body: Content
    init(content: Content) {
        self.body = content
    }
}

class ViewForType {
    init() {}
    
    func create(type: Int, state: Binding<Int>) -> AnyView {
        switch type {
        case type:
            return AnyView(Text("Type one in state \(state.value)"))
        default:
            return AnyView(VStack {
                Text("upper")
                Text("second")
            })
        }
    }
}

func f() {
    var body: some View {
        HStack {
            Text("Hi!")
            VStack {
                Text("Hi again!")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(viewForType: ViewForType(), state: 5)
    }
}
#endif
