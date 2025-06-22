//
//  SubscriptionFeedView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

struct SubscriptionFeedView: View {
    // Normally this would come from a ViewModel with real logic
    let subscribedPosts: [Post] = [
        Post(imageName: "poster1", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
        Post(imageName: "font2", title: "FONT DESIGN", username: "@rootahh", category: "FONTS"),
        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS")
    ]

    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    // Title
                    Text("МОЯ ЛЕНТА")
                        .font(.system(size: 24, weight: .bold))
                        .padding(.horizontal)
                        .padding(.top)

                    // Feed
                    ForEach(subscribedPosts) { post in
                        PostCardView(post: post)
                    }
                }
                .padding(.top, 8)
            }

            Divider()

            // Tab bar
            HStack {
                TabBarItem(icon: "house", title: "ГЛАВНАЯ")
                TabBarItem(icon: "square.grid.2x2", title: "ЛЕНТА", isSelected: true)
                TabBarItem(icon: "number", title: "ТЕМЫ")
                TabBarItem(icon: "doc.text", title: "БЛОГ")
                TabBarItem(icon: "person", title: "ПРОФИЛЬ")
            }
            .padding(.vertical, 10)
            .background(.ultraThinMaterial)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
