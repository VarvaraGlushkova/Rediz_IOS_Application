//
//  UserProfileView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

struct UserProfileView: View {
    
    private func relatedPosts(for task: DesignTask) -> [Post] {
        return profilePosts.filter { $0.title == task.category }
    }
    var scrollContent: some View {
        VStack(alignment: .leading, spacing: 16) {
            profileHeader
            profileStats
            profileBio
            editButton
            tabSwitcher
            tabFeed
        }
        .padding(.top)
    }
    private var profileHeader: some View {
        Text(user.username.uppercased())
            .font(.system(size: 28, weight: .bold))
            .padding(.horizontal)
    }

    private var profileStats: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(user.avatarImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 8))

            HStack(spacing: 20) {
                statBlock(count: user.redesigns, label: "редизок")
                statBlock(count: user.subscriptions, label: "подписок")
                statBlock(count: user.followers, label: "подписчика")
            }
        }
        .padding(.horizontal)
    }

    private func statBlock(count: Int, label: String) -> some View {
        VStack {
            Text("\(count)")
                .font(.system(size: 16, weight: .bold))
            Text(label)
                .font(.caption)
                .foregroundColor(.gray)
        }
    }

    private var profileBio: some View {
        Text(user.bio)
            .font(.system(size: 14))
            .padding(.horizontal)
    }

    private var editButton: some View {
        Button(action: {}) {
            Text("редактировать")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(#colorLiteral(red: 0.875, green: 0.875, blue: 1, alpha: 1)))
                .foregroundColor(.black)
                .cornerRadius(6)
        }
        .padding(.horizontal)
    }

    private var tabSwitcher: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                Text(tab)
                    .font(.system(size: 14, weight: .medium))
                    .padding(.vertical, 6)
                    .padding(.horizontal, 12)
                    .background(selectedTab == tab ? Color(#colorLiteral(red: 0.831, green: 0.929, blue: 0.243, alpha: 1)) : .clear)
                    .cornerRadius(4)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.3)) {
                            selectedTab = tab
                        }
                    }
            }
        }
        .padding(.horizontal)
    }

    private var tabFeed: some View {
        ZStack {
            if selectedTab == "РЕДИЗКИ" {
                RedesignsTabView(posts: profilePosts)
            }

            if selectedTab == "ТАСКИ" {
                TasksTabView(tasks: profileTasks)
            }
        }
    }



    
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
    
    let profilePosts: [Post] = [
        Post(imageName: "poster1", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
        Post(imageName: "poster2", title: "BRUTALIST", username: "@rootahh", category: "POSTERS")
    ]

    let profileTasks: [DesignTask] = [
        DesignTask(imageName1: "poster1", imageName2: "poster2", title: "Task Redesign", username: "@rootahh", category: "UI", redesigns: [
                Post(imageName: "poster2", title: "Vintage Collage", username: "@inkbyte", category: "POSTERS")
            ]),
        DesignTask(imageName1: "font1", imageName2: "font2", title: "UI Revamp", username: "@typeflow", category: "UI", redesigns: [
                Post(imageName: "poster2", title: "Vintage Collage", username: "@inkbyte", category: "POSTERS")
            ]),
        DesignTask(imageName1: "logo1", imageName2: "logo2", title: "Logo Rebuild", username: "@softgrid", category: "LOGO", redesigns: [
                Post(imageName: "poster2", title: "Vintage Collage", username: "@inkbyte", category: "POSTERS")
            ]),
        DesignTask(imageName1: "interior1", imageName2: "interior2", title: "Interior Study", username: "@glowup", category: "INTERIOR", redesigns: [
                Post(imageName: "poster2", title: "Vintage Collage", username: "@inkbyte", category: "POSTERS")
            ]),
        DesignTask(imageName1: "poster3", imageName2: "poster4", title: "Poster Battle", username: "@inkbyte", category: "POSTERS", redesigns: [
                Post(imageName: "poster2", title: "Vintage Collage", username: "@inkbyte", category: "POSTERS")
            ])
    ]

//
//    var body: some View {
        var body: some View {
            VStack(spacing: 0) {
                ScrollView {
                    scrollContent
                }
            }
        }

//        VStack(spacing: 0) {
//            ScrollView {
//                VStack(alignment: .leading, spacing: 16) {
//                    // Username
//                    Text(user.username.uppercased())
//                        .font(.system(size: 28, weight: .bold))
//                        .padding(.horizontal)
//
//                    // Avatar + Stats
//                    HStack(alignment: .top, spacing: 16) {
//                        Image(user.avatarImage)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 90, height: 90)
//                            .clipShape(RoundedRectangle(cornerRadius: 8))
//
//                        HStack(spacing: 20) {
//                            VStack {
//                                Text("\(user.redesigns)")
//                                    .font(.system(size: 16, weight: .bold))
//                                Text("редизок")
//                                    .font(.caption)
//                                    .foregroundColor(.gray)
//                            }
//                            VStack {
//                                Text("\(user.subscriptions)")
//                                    .font(.system(size: 16, weight: .bold))
//                                Text("подписок")
//                                    .font(.caption)
//                                    .foregroundColor(.gray)
//                            }
//                            VStack {
//                                Text("\(user.followers)")
//                                    .font(.system(size: 16, weight: .bold))
//                                Text("подписчика")
//                                    .font(.caption)
//                                    .foregroundColor(.gray)
//                            }
//                        }
//                    }
//                    .padding(.horizontal)
//
//                    // Bio
//                    Text(user.bio)
//                        .font(.system(size: 14))
//                        .padding(.horizontal)
//
//                    // Edit Button
//                    Button(action: {}) {
//                        Text("редактировать")
//                            .frame(maxWidth: .infinity)
//                            .padding()
//                            .background(Color(#colorLiteral(red: 0.875, green: 0.875, blue: 1, alpha: 1)))
//                            .foregroundColor(.black)
//                            .cornerRadius(6)
//                    }
//                    .padding(.horizontal)
//
//                    // Tab Toggle
//                    HStack {
//                        ForEach(tabs, id: \.self) { tab in
//                            Text(tab)
//                                .font(.system(size: 14, weight: .medium))
//                                .padding(.vertical, 6)
//                                .padding(.horizontal, 12)
//                                .background(selectedTab == tab ? Color(#colorLiteral(red: 0.831, green: 0.929, blue: 0.243, alpha: 1)) : .clear)
//                                .cornerRadius(4)
//                                .onTapGesture {
//                                    withAnimation(.easeInOut(duration: 0.3)) {
//                                        selectedTab = tab
//                                    }
//                                }
//
//                        }
//                    }
//                    .padding(.horizontal)
//
//                    // Feed (placeholder)
//                    ZStack {
//                        if selectedTab == "РЕДИЗКИ" {
//                                RedesignsTabView(posts: profilePosts)
//                            }
//
//                        if selectedTab == "ТАСКИ" {
//                               TasksTabView(tasks: profileTasks)
//                           }
//                    }
////                    .animation(.easeInOut(duration: 0.3), value: selectedTab)
//
//                    }
//                }
//                .padding(.top)
            }

//            Divider()
//            .padding(.vertical, 10)
//            .background(.ultraThinMaterial)
//        }
//    }


