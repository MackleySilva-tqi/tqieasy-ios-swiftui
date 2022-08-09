//
//  CustomNavBarView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 15/07/22.
//

import SwiftUI

struct CustomNavBarView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let showBackButton: Bool
    let showAddButton: Bool
    
    let title: String
    let subtitle: String?
    
    var body: some View {
        HStack{
            if showBackButton {
                backButton
            }
            Spacer()
            titleSection
            Spacer()
            if showAddButton {
                addButton
            }
        }
        .padding()
        .accentColor(.white)
        .foregroundColor(.white)
        .font(.headline)
        .background(
            Color(hex: "093B62").ignoresSafeArea(edges: .top)
        )
    }
}

struct CustomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            CustomNavBarView(showBackButton: true, showAddButton: true, title: "Title here", subtitle: "subtitle goes here")
            Spacer()
        }
    }
}

extension CustomNavBarView {
    private var backButton: some View{
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.left")
        })
    }
    
    private var addButton: some View{
        Button {
            
        } label: {
            Image(systemName: "plus")
        }
    }
    
    private var titleSection: some View {
        VStack(spacing: 4){
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            if let sub = subtitle{
                Text(sub)
            }
        }
    }
}
