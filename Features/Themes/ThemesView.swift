//
//  ThemesView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//

import SwiftUI

struct Theme: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let taskCount: Int
}

struct ThemesView: View {
    let themes: [Theme] = [
        Theme(title: "FONTS", imageName: "theme_fonts", taskCount: 124),
        Theme(title: "POSTERS", imageName: "theme_posters", taskCount: 124),
        Theme(title: "UI", imageName: "theme_ui", taskCount: 124),
        Theme(title: "LOGO", imageName: "theme_logo", taskCount: 124),
        Theme(title: "INTERIOR", imageName: "theme_interior", taskCount: 124),
        Theme(title: "OTHER", imageName: "theme_other", taskCount: 124)
    ]

    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    var body: some View {
        VStack(spacing: 0) {
            // Title
            HStack {
                Text("ТЕМЫ")
                    .font(.system(size: 24, weight: .bold))
                    .padding(.horizontal)
                Spacer()
            }
            .padding(.top)

            // Search Bar
            HStack {
                TextField("Search", text: .constant(""))
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .overlay(
                        HStack {
                            Spacer()
                            Image(systemName: "mic.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 12)
                        }
                    )
            }
            .padding([.horizontal, .top])

            // Grid
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(themes) { theme in
                        VStack(spacing: 8) {
                            Image(theme.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 120)
                                .frame(maxWidth: .infinity)
                                .clipped()
                                .cornerRadius(8)

                            Text(theme.title)
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.black)

                            Text("\(theme.taskCount) таска")
                                .font(.system(size: 13))
                                .foregroundColor(.gray)
                        }
                    }
                }
                .padding()
            }

            Divider()

            // Tab Bar
            HStack {
//                TabBarItem(icon: "house", title: "ГЛАВНАЯ")
//                TabBarItem(icon: "square.grid.2x2", title: "ЛЕНТА")
//                TabBarItem(icon: "number", title: "ТЕМЫ", isSelected: true)
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
    ThemesView()
}
