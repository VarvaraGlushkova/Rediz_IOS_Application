//
//  UserProfileView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

struct UserProfileView: View {
    let user = User(
        username: "ROOTAHH",
        avatarImage: "avatar_rootahh", // Add this to Assets
        bio: "Люблю редизить всё, что попадается под руку! Получаю образование в сфере продуктового дизайна, пишу на холстах.",
        redesigns: 35,
        subscriptions: 12,
        followers: 134
    )

    @State private var selectedTab = "ТАСКИ"
    let tabs = ["РЕДИЗКИ", "ТАСКИ"]

    var body: some View {
        VStack(spacing: 0) {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    // Username
                    Text(user.username.uppercased())
                        .font(.system(size: 28, weight: .bold))
                        .padding(.horizontal)

                    // Avatar + Stats
                    HStack(alignment: .top, spacing: 16) {
                        Image(user.avatarImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90, height: 90)
                            .clipShape(RoundedRectangle(cornerRadius: 8))

                        HStack(spacing: 20) {
                            VStack {
                                Text("\(user.redesigns)")
                                    .font(.system(size: 16, weight: .bold))
                                Text("редизок")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            VStack {
                                Text("\(user.subscriptions)")
                                    .font(.system(size: 16, weight: .bold))
                                Text("подписок")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                            VStack {
                                Text("\(user.followers)")
                                    .font(.system(size: 16, weight: .bold))
                                Text("подписчика")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .padding(.horizontal)

                    // Bio
                    Text(user.bio)
                        .font(.system(size: 14))
                        .padding(.horizontal)

                    // Edit Button
                    Button(action: {}) {
                        Text("редактировать")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color(#colorLiteral(red: 0.875, green: 0.875, blue: 1, alpha: 1)))
                            .foregroundColor(.black)
                            .cornerRadius(6)
                    }
                    .padding(.horizontal)

                    // Tab Toggle
                    HStack {
                        ForEach(tabs, id: \.self) { tab in
                            Text(tab)
                                .font(.system(size: 14, weight: .medium))
                                .padding(.vertical, 6)
                                .padding(.horizontal, 12)
                                .background(selectedTab == tab ? Color(#colorLiteral(red: 0.831, green: 0.929, blue: 0.243, alpha: 1)) : .clear)
                                .cornerRadius(4)
                                .onTapGesture {
                                    selectedTab = tab
                                }
                        }
                    }
                    .padding(.horizontal)

                    // Feed (placeholder)
                    VStack(spacing: 30) {
                        PostCardView(post: Post(
                            imageName: "poster1",
                            title: "POSTER DESIGN",
                            username: "@rootahh",
                            category: "POSTERS"
                        ))

                        PostCardView(post: Post(
                            imageName: "poster2",
                            title: "POSTER DESIGN",
                            username: "@rootahh",
                            category: "POSTERS"
                        ))
                    }
                }
                .padding(.top)
            }

            Divider()

            // Tab bar
//            HStack {
//                TabBarItem(icon: "house", title: "ГЛАВНАЯ")
//                TabBarItem(icon: "square.grid.2x2", title: "ЛЕНТА")
//                TabBarItem(icon: "number", title: "ТЕМЫ")
//                TabBarItem(icon: "doc.text", title: "БЛОГ")
//                TabBarItem(icon: "person", title: "ПРОФИЛЬ", isSelected: true)
//            }
            .padding(.vertical, 10)
            .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    UserProfileView()
}
