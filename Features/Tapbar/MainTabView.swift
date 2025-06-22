//
//  MainTabView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            MixedFeedView()
                .tabItem {
                    Image(systemName: "house")
                    Text("ГЛАВНАЯ")
                }

            SubscriptionFeedView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("ЛЕНТА")
                }

            ThemesView()
                .tabItem {
                    Image(systemName: "number")
                    Text("ТЕМЫ")
                }

            BlogView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("БЛОГ")
                }

            UserProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("ПРОФИЛЬ")
                }
        }
        .accentColor(.pink) // active tab color (optional)
    }
}

#Preview {
    MainTabView()
}
