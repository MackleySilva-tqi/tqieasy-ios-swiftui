//
//  QuickLinksCardModel.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 11/08/22.
//

import Foundation

struct QuickLinksCardModel {
    var title: String
    var icon: String
}


extension QuickLinksCardModel {
    static let quickLinksList: [QuickLinksCardModel] =
    [
        QuickLinksCardModel(title: "Apontamento de Exceções", icon: "clock.circle"),
        QuickLinksCardModel(title: "Minhas Dúvidas", icon: "questionmark.bubble"),
        QuickLinksCardModel(title: "Parceiros", icon: "person.line.dotted.person"),
        QuickLinksCardModel(title: "Meus Eventos", icon: "party.popper"),
        QuickLinksCardModel(title: "HelpDesk", icon: "gear.badge.questionmark"),
        QuickLinksCardModel(title: "Ferias", icon: "airplane.circle.fill"),
        QuickLinksCardModel(title: "Indicação Premiada", icon: "hands.sparkles"),
        QuickLinksCardModel(title: "Reservar Local de Trabalho", icon: "calendar.badge.plus")
    ]
}
