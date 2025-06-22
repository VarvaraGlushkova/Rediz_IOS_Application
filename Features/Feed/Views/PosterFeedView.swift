//
//  PosterFeedView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//

import SwiftUI

struct PosterFeedView: View {
    @StateObject private var viewModel = PosterFeedViewModel()
        private let categories = ["ALL", "POSTERS", "FONTS", "UI", "LOGO", "INTERIOR"]

    var body: some View {
        VStack(spacing: 0) {
            // Category Tabs
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(categories, id: \.self) { category in
                                    Text(category)
                                        .font(.system(size: 14, weight: .medium))
                                        .foregroundColor(.black)
                                        .padding(.vertical, 8)
                                        .padding(.horizontal, 12)
                                        .background(viewModel.selectedCategory == category ? Color(#colorLiteral(red: 0.831, green: 0.929, blue: 0.243, alpha: 1)) : Color.clear)
                                        .cornerRadius(8)
                                        .onTapGesture {
                                            viewModel.selectedCategory = category
                                        }
                                }
                            }
                            .padding(.horizontal)
                        }
                        .padding(.top, 10)

            // Feed ScrollView
            ScrollView {
                            VStack(spacing: 30) {
                                ForEach(viewModel.filteredPosts) { post in
                                    PostCardView(post: post)
                                }
                            }
                            .padding(.top)
                        }
            
            Divider()

            // Custom Tab Bar
            HStack {
//                TabBarItem(icon: "house", title: "ГЛАВНАЯ", isSelected: true)
//                TabBarItem(icon: "square.grid.2x2", title: "ЛЕНТА")
//                TabBarItem(icon: "number", title: "ТЕМЫ")
//                TabBarItem(icon: "doc.text", title: "БЛОГ")
//                TabBarItem(icon: "person", title: "ПРОФИЛЬ")
            }
            .padding(.vertical, 10)
            .background(.ultraThinMaterial)
        }
//        .edgesIgnoringSafeArea(.bottom)
    }
}


#Preview {
    PosterFeedView()
}
