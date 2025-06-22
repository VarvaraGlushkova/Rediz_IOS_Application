//
//  BlogView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

struct BlogView: View {
    @StateObject private var viewModel = BlogViewModel()
    let categories = ["ALL", "POSTERS", "FONTS", "UI", "LOGO", "INTERIOR"]

    var body: some View {
        VStack(spacing: 0) {
            // Title
            HStack {
                Text("БЛОГ")
                    .font(.system(size: 28, weight: .bold))
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)

            // Categories
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(categories, id: \.self) { cat in
                        Text(cat)
                            .font(.system(size: 14, weight: .medium))
                            .padding(.vertical, 6)
                            .padding(.horizontal, 12)
                            .background(viewModel.selectedCategory == cat ? Color(#colorLiteral(red: 0.831, green: 0.929, blue: 0.243, alpha: 1)) : Color.clear)
                            .cornerRadius(4)
                            .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.2)) {
                                    viewModel.selectedCategory = cat
                                }
                            }
                    }
                }
                .padding(.horizontal)
            }

            // Blog feed
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(viewModel.filteredPosts) { post in
                        BlogPostCardView(post: post)
                    }
                }
                .padding(.top)
            }

            Divider()
                .padding(.top, 8)
        }
    }
}

#Preview {
    BlogView()
}
