//
//  TabBarItem.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 05/08/22.
//

import SwiftUI

enum TabBarItem: Hashable {
    case home, favorites, profile, jobs, people
    
    var iconName: String {
        switch self {
        case .home: return "house"
        case .favorites: return "heart.circle.fill"
        case .people: return "person.3.fill"
        case .jobs: return "bag.fill"
        case .profile: return "person.crop.circle.fill"
        }
    }
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .favorites: return "Merit \n Money"
        case .profile: return "Meu Perfil"
        case .jobs: return "Vagas"
        case .people: return "People"
        }
    }
    
    var color: Color {
        switch self {
        case .home: return Color.red
        case .favorites: return Color.blue
        case .profile: return Color.green
        case .jobs: return Color.orange
        case .people: return Color.purple
        }
    }
}
