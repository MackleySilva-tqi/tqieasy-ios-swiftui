//
//  CustomNavBarContainerView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 29/07/22.
//

import SwiftUI

struct CustomNavBarContainerView<Content: View>: View {
    
    let content: Content
    
    @State private var showBackButton: Bool = true
    @State private var showAddButton: Bool = false
    
    @State private var title: String = "Title" //""
    @State private var subtitle: String? = "subtitle" // nil
    
    init(@ViewBuilder content: () -> Content){
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0){
            CustomNavBarView(showBackButton: showBackButton, showAddButton: showAddButton, title: title, subtitle: subtitle)
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CSNavBarTitlePK.self) { value in
            self.title = value
        }
        .onPreferenceChange(CSNavBarSubtitlePK.self) { value in
            self.subtitle = value
        }
        .onPreferenceChange(CSNavBarBackButtonPK.self) { value in
            self.showBackButton = !value
        }
        .onPreferenceChange(CSNavBarAddButtonPK.self) { value in
            self.showAddButton = value
        }
    }
}

struct CustomNavBarContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBarContainerView {
            ZStack{
                Color.green.ignoresSafeArea()
                
                Text("Hello, world!")
                    .foregroundColor(.white)
                    .csNavigationTitle("Test Title")
            }
        }
    }
}
