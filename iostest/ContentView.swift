//
//  ContentView.swift
//  iostest
//
//  Created by Md Omar Faruq on 2/24/22.
//

import SwiftUI


struct ContentView: View {
    @State var currentTab: Tab = .Home
  
    
    init () {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
            VStack(spacing: 0) {
                TabView(selection: $currentTab) {
                    Home()
                        .tag(Tab.Home)
                    SearchView()
                        .tag(Tab.Discover)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                       .background(
                                        Color("search")
                                       )
                    MovieViewD()
                        .tag(Tab.Union)
                    Text("Home")
                        .tag(Tab.User)
                       
                }
                HStack(spacing:0 ){
                    ForEach(Tab.allCases,id: \.self) {tab in
                        Button {
                        } label: {
                            Image(tab.rawValue)
                                .resizable()
                                .renderingMode(.template)
                                .aspectRatio( contentMode: .fit)
                                .frame(width: 25, height: 25)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(currentTab == tab ?
                                                 Color(.gray):
                                                Color.gray)
                        }
                
                    }
                }
                .padding([.horizontal,.bottom])
                .padding(.bottom,20 )
            }
            .background(Color("search")
                                       .shadow(color: Color.black.opacity(0.04), radius: 5, x: -5, y:-5)
                                       .ignoresSafeArea(.container, edges: .bottom)
                       )
       
        
        
    }
       
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Tab: String, CaseIterable{
    case Home = "Home"
    case Discover = "Discover"
    case Union = "Union"
    case User = "User"
}
