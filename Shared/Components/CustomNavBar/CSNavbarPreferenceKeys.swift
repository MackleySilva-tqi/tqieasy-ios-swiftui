//
//  CSNavbarPreferenceKeys.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 05/08/22.
//

import SwiftUI

//@State private var showBackButton: Bool = true
//@State private var showAddButton: Bool = false
//
//@State private var title: String = "Title" //""
//@State private var subtitle: String? = "subtitle" // nil

struct CSNavBarTitlePK: PreferenceKey {
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CSNavBarSubtitlePK: PreferenceKey {
    static var defaultValue: String? = nil
    
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}


struct CSNavBarBackButtonPK: PreferenceKey {
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

struct CSNavBarAddButtonPK: PreferenceKey {
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

extension View {
    
    func csNavigationTitle(_ title: String) -> some View {
        preference(key: CSNavBarTitlePK.self, value: title)
    }
    
    func csNavigationSubtitle(_ subtitle: String?) -> some View {
        preference(key: CSNavBarSubtitlePK.self, value: subtitle)
    }
    
    func csNavigationBarBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CSNavBarBackButtonPK.self, value: hidden)
    }
    
    func csNavigationBarAddButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CSNavBarAddButtonPK.self, value: hidden)
    }
    
    func csNavBarItems(title: String = "", subtitle: String? = nil, backBtn: Bool = false, addBtn: Bool = false) -> some View {
        self
            .csNavigationTitle(title)
            .csNavigationSubtitle(subtitle)
            .csNavigationBarBackButtonHidden(backBtn)
            .csNavigationBarAddButtonHidden(addBtn)
    }
}
