//
//  QuickLinksView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 08/07/22.
//

import SwiftUI

struct QuickLinksView: View {
    var body: some View {
        CSNavView {
            ZStack {
                CSNavLink(destination:
                    Text("Destination")
                            .csNavigationTitle("Destination")
                            .csNavigationSubtitle("Second Screen")
                ) {
                    Text("Navigate")
                }
            }
            .csNavBarItems(title: "New Title", subtitle: nil, backBtn: true, addBtn: false)
        }
    }
}

struct QuickLinksView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLinksView()
    }
}
