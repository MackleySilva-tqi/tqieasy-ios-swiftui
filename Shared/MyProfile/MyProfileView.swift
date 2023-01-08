//
//  MyProfileView.swift
//  TQIEasy-2 (iOS)
//
//  Created by Mackley Magalhães da Silva on 08/07/22.
//

import SwiftUI

struct MyProfileView: View {
    @State var isDeleted = false
    @State var isPinned = false
    
    var body: some View {
        NavigationView {
            List {
                profile
                menu
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Mais opções")
        }
    }
    
    
    var profile: some View{
        VStack (spacing: 8) {
            Image("person-teste")
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                
            Text("Mackley Magalhães da Silva")
                .lineLimit(10)
                .font(.title3.weight(.semibold))
            HStack {
                Text("mackley.silva @tqi.com.br")
                    .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    var menu: some View{
        Section {
            NavigationLink(destination: QuickLinksView(scrums: QuickLinksCardModel.quickLinksList)) {
                Label("Editar Perfil", systemImage: "square.and.pencil")
            }
            NavigationLink { Text("Alterar senha") } label:{
                Label("Alterar Senha", systemImage: "lock")
            }
            NavigationLink { Text("Sair") } label: {
                Label("Sair", systemImage: "rectangle.portrait.and.arrow.right")
            }
        }
        .accentColor(.secondary)
        .listRowSeparatorTint(.blue)
        .listRowSeparator(.hidden)
    }
    
    var pinButton : some View{
        Button { isPinned.toggle() } label: {
            if isPinned{
                Label("Unpin", systemImage: "pin.slash")
            }else{
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray : .yellow)
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
