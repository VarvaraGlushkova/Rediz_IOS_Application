//
//  MixedFeedViewModel.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

class MixedFeedViewModel: ObservableObject {
    @Published var selectedCategory: String = "ALL"

    private let posts: [Post] = [
        Post(imageName: "poster1", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
        Post(imageName: "font1", title: "WEB FONT", username: "@max_kio", category: "FONTS"),
        Post(imageName: "font1", title: "WEB FONT", username: "@max_kio", category: "FONTS"),
        Post(imageName: "font1", title: "WEB FONT", username: "@max_kio", category: "FONTS"),
        Post(imageName: "font1", title: "WEB FONT", username: "@max_kio", category: "FONTS")
    ]

    private let tasks: [Task] = [
        Task(imageName1: "poster1", imageName2: "poster2", title: "Poster Comparison", username: "@seven", category: "POSTERS"),
        Task(imageName1: "font2", imageName2: "font1", title: "Typography Battle", username: "@inkbyte", category: "FONTS"),
        Task(imageName1: "poster1", imageName2: "poster2", title: "Poster Comparison", username: "@seven", category: "POSTERS"),
        Task(imageName1: "poster1", imageName2: "poster2", title: "Poster Comparison", username: "@seven", category: "POSTERS"),
        Task(imageName1: "poster1", imageName2: "poster2", title: "Poster Comparison", username: "@seven", category: "POSTERS")
    ]

    var filteredItems: [FeedItem] {
        let allItems = posts.map { FeedItem.post($0) } + tasks.map { FeedItem.task($0) }

        let filtered = selectedCategory == "ALL"
            ? allItems
            : allItems.filter { $0.category == selectedCategory }

        return filtered.shuffled() // 👈 this shuffles the result on every access
    }
}
