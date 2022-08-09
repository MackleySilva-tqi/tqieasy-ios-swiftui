//
//  PeopleView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 08/07/22.
//

import SwiftUI

struct PeopleView: View {
    var body: some View {
        CSNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                
                NavigationLink(
                    destination: Text("Destination").foregroundColor(.white),
                    label: {
                        Text("Navigate")
                    })
            }
            .navigationBarHidden(true)
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
