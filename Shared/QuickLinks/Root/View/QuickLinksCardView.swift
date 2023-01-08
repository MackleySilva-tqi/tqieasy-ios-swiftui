//
//  QuickLinksCardView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 11/08/22.
//

import SwiftUI

struct QuickLinksCardView: View {
    let scrum: QuickLinksCardModel
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: scrum.icon)
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(.gray)
            Text(scrum.title)
                .font(.body)
                .multilineTextAlignment(.center)
        }
        .frame(width: 150, height: 100, alignment: .center)
        .padding(8)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(.tertiary, lineWidth: 2)
        )
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var scrum = QuickLinksCardModel.quickLinksList[0]
    static var previews: some View {
        QuickLinksCardView(scrum: scrum)
            .previewLayout(.fixed(width: 300, height: 300))
    }
}
