//
//  ContentView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 13/07/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            QuickLinksView()
                .tabBarItem(tab: .home, selection: $tabSelection)
            Color.purple.opacity(0.3)
                .tabBarItem(tab: .jobs, selection: $tabSelection)
            Color.red.opacity(0.3)
                .tabBarItem(tab: .favorites, selection: $tabSelection)
            Color.pink.opacity(0.3)
                .tabBarItem(tab: .people, selection: $tabSelection)
            MyProfileView()
                .tabBarItem(tab: .profile, selection: $tabSelection)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
