//
//  PosterFeedViewModel.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//
import SwiftUI

import Foundation
//
//class PosterFeedViewModel: ObservableObject {
//    @Published var posts: [Post] = [
//        Post(imageName: "poster1", title: "POSTER DESIGN", username: "@rootahh"),
//        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@seven"),
//        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@seven"),
//        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@seven"),
//        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@seven"),
//        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@seven"),
//        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@seven"),
//        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@seven"),
//    ]
//}

class PosterFeedViewModel: ObservableObject {
    @Published var selectedCategory: String = "POSTERS"

    private let allPosts: [Post] = [
        Post(imageName: "poster1", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
        Post(imageName: "poster3", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
        Post(imageName: "poster4", title: "Event Flyer", username: "@typeflow", category: "POSTERS"),
        Post(imageName: "poster2",  title: "Brutalist Poster", username: "@typeflow", category: "POSTERS"),
        Post(imageName: "poster2", title: "Vintage Collage", username: "@inkbyte", category: "POSTERS"),
        Post(imageName: "poster2",  title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
        Post(imageName: "poster2", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
        Post(imageName: "font1", title: "WEB FONT", username: "@max_kio", category: "FONTS"),
        Post(imageName: "font2", title: "FONT DESIGN", username: "@seven", category: "FONTS"),
        // Add more posts for UI, LOGO, etc.
    ]

    var filteredPosts: [Post] {
        if selectedCategory == "ALL" {
            return allPosts
        } else {
            return allPosts.filter { $0.category == selectedCategory }
        }
    }
}
