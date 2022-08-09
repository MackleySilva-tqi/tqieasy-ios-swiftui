//
//  Example.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 05/08/22.
//

import SwiftUI

struct Example: View {
    var body: some View {
        TabView{
            Color.orange.ignoresSafeArea()
                .tabItem {
                    Image(systemName: "home")
                    Text("Hi")
                }
            Color.blue.ignoresSafeArea()
                .tabItem {
                    Image(systemName: "home")
                    Text("Hi")
                }
        }
    }
}

struct Example_Previews: PreviewProvider {
    static var previews: some View {
        Example()
    }
}
