//
//  ContentView.swift
//  TabView_Example_Test
//
//  Created by David on 2/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @SceneStorage("selectedView") var selectedView: String?
    
    var body: some View {
        TabView(selection: $selectedView) {
         
            TabView1()
                .tag(TabView1.tag)
                .accessibility(identifier: "Hello_1")
                .tabItem {
                    Image(systemName: "1.square")
                    Text("#1")
                }
                //.accessibility(identifier: "TabView_1")  // gets attached to Hello, World #1
            
            TabView2()
                .tag(TabView2.tag)
                .accessibility(identifier: "Hello_2")
                .tabItem {
                    Image(systemName: "2.square")
                       
                    Text("#2")
                }
                //.accessibility(identifier: "TabView_2") // gets attached to Hello, World #2
            
            TabView3()
                .tag(TabView3.tag)
                .accessibility(identifier: "Hello_3")
                .tabItem {
                    Image(systemName: "3.square")
                        
                    Text("#3")
                }
                //.accessibility(identifier: "TabView_3") // gets attached to Hello, World #3
                
        }
        .accessibility(identifier: "Main_TabBar")
        
    }
}

struct TabView1: View {
    static let tag: String? = "TabView1"
    var body: some View {
        Text("Hello, World #1!")
    }
}

struct TabView2: View {
    static let tag: String? = "TabView2"
    var body: some View {
        Text("Hello, World #2!")
    }
}


struct TabView3: View {
    static let tag: String? = "TabView3"
    var body: some View {
        Text("Hello, World #3!")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
