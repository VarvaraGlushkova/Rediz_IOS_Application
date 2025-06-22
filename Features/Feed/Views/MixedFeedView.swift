//
//  MixedFeedView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

struct MixedFeedView: View {
    @StateObject private var viewModel = MixedFeedViewModel()
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

            // Feed Scroll
            ScrollView {
                VStack(spacing: 30) {
                    ForEach(viewModel.filteredItems) { item in
                        switch item {
                        case .post(let post):
                            PostCardView(post: post)
                        case .task(let task):
                            TaskCardView(task: task)
                        }
                    }
                }
                .padding(.top)
            }
        }
    }
}

#Preview {
    MixedFeedView()
}

