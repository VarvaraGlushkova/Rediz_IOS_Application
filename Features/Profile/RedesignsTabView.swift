//
//  RedesignsTabView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 25.06.2025.
//
import SwiftUI

struct RedesignsTabView: View {
    let posts: [Post]

    var body: some View {
        VStack(spacing: 30) {
            ForEach(posts) { post in
                PostCardView(post: post)
            }
        }
//        .transition(.opacity.combined(with: .move(edge: .leading)))
//        .animation(.easeInOut(duration: 0.3), value: posts)
    }
}
