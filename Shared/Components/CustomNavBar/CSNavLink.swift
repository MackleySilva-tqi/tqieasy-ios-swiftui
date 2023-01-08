//
//  CSNavLink.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 29/07/22.
//

import SwiftUI

struct CSNavLink<Label: View, Destination: View>: View {
    
    let destination: Destination
    let label: Label
    
    init(destination: Destination, @ViewBuilder label: () -> Label) {
        self.label = label()
        self.destination = destination
    }
    
    var body: some View {
        NavigationLink(
            destination:
                CustomNavBarContainerView(content: {
                    destination
                })
                .navigationBarHidden(true)
            ,
            label: {
                label
            })
    }
}

struct CSNavLink_Previews: PreviewProvider {
    static var previews: some View {
        CSNavView{
            CSNavLink(
                destination: Text("Destination")) {
                Text("Navigate")
            }
        }
    }
}
