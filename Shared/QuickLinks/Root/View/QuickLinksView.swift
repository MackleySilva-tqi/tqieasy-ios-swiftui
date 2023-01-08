//
//  QuickLinksView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 08/07/22.
//

import SwiftUI

struct QuickLinksView: View {
    
    let scrums: [QuickLinksCardModel]
    
    let columns = [ GridItem(.adaptive(minimum: 150, maximum: 200))]
    
    var body: some View {
        CSNavView {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 15){
                    
                    ForEach(scrums, id: \.title) { scrum in
                        
                        CSNavLink(destination: Text("Destination")) {
                            QuickLinksCardView(scrum: scrum)
                        }
                    }
                }
                .padding(.vertical)
            }
            //.background(.gray)
            .csNavBarItems(title: "TQI Easy", subtitle: nil, backBtn: true, addBtn: false)
        }
    }
}

struct QuickLinksView_Previews: PreviewProvider {
    static var previews: some View {
        QuickLinksView(scrums: QuickLinksCardModel.quickLinksList)
    }
}
