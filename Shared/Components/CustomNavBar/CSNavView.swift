//
//  CSNavView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 29/07/22.
//

import SwiftUI

struct CSNavView<Content:View>: View {
    
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        NavigationView{
            CustomNavBarContainerView {
                content
            }
            .navigationBarHidden(true)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CSNavView_Previews: PreviewProvider {
    static var previews: some View {
        CSNavView{
            Color.red.ignoresSafeArea()
        }
    }
}

extension UINavigationController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
