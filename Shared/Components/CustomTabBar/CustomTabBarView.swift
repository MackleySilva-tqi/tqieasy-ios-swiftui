//
//  CustomTabBarView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 29/07/22.
//

import SwiftUI

struct CustomTabBarView: View {
    
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    
    var body: some View {
        tabBarVersion1
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [.home, .favorites, .profile, .jobs, .people]
    
    static var previews: some View {
        CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!))
            //.previewLayout(PreviewLayout.fixed(width: 450, height: 80))
    }
}

extension CustomTabBarView {
    private func tabView(tab: TabBarItem) -> some View{
        VStack(alignment: .center, spacing: 3){
            Image(systemName: tab.iconName)
                .symbolVariant(.fill)
                .font(.body.bold())
                .frame(width: 44, height: 29)
            Text(tab.title)
                .font(.caption2)
                .lineLimit(2)
                .multilineTextAlignment(.center)
        }
        .foregroundColor(selection == tab ? tab.color : Color.gray)
        .padding(.top, 10)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(selection == tab ? bgButton(tab: tab) : nil)
        .overlay(selection == tab ? ovButton(tab: tab) : nil)
    }
    
    private var tabBarVersion1: some View {
        HStack{
            ForEach(tabs, id: \.self) { tab in
                tabView(tab: tab)
                    .onTapGesture {
                        switchToTab(tab: tab)
                    }
            }
        }
        //.padding(.horizontal, 8)
        .frame(height: 88, alignment: .top)
        .background(
            .ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous)
        )
        .ignoresSafeArea()
    }
    
    private func ovButton(tab: TabBarItem) -> some View{
        HStack{
            Rectangle()
                .fill(tab.color.opacity(0.7))
                .frame(width: 30, height: 5)
                .cornerRadius(3)
                .frame(width: 10)
                .frame(maxHeight: .infinity, alignment: .top)
        }
        .padding(.horizontal, 8)
    }
    
    private func bgButton(tab: TabBarItem) -> some View{
        HStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(tab.color.opacity(0.3))
                .frame(width: 40)
                .blur(radius: 15)
        }
        .padding(.horizontal, 8)
    }
    
    private func switchToTab(tab: TabBarItem) {
        withAnimation(.easeInOut){
            selection = tab
        }
    }
}
