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
        Post(imageName: "font2", title: "WEB FONT", username: "@max_kio", category: "FONTS"),
        Post(imageName: "font3", title: "WEB FONT", username: "@max_kio", category: "FONTS"),
        Post(imageName: "font4", title: "WEB FONT", username: "@max_kio", category: "FONTS")
    ]

    private let tasks: [DesignTask] = [
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
    
    var filteredItems: [FeedItem] {
        let allItems = posts.map { FeedItem.post($0) } + tasks.map { FeedItem.task($0) }

        let filtered = selectedCategory == "ALL"
            ? allItems
            : allItems.filter { $0.category == selectedCategory }
                    
        return filtered.shuffled() // 👈 this shuffles the result on every access
    }
}
