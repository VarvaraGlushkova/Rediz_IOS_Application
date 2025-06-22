//
//  BlogViewModel.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

class BlogViewModel: ObservableObject {
    @Published var selectedCategory: String = "POSTERS"

    private let allPosts: [BlogPost] = [
        BlogPost(imageName: "blog1", title: "7 китов редизайна: с чего начать преобразование", author: "Александр Ларцев", date: "17 марта 2025", category: "POSTERS"),
        BlogPost(imageName: "blog2", title: "Композиция в дизайне: как создать гармоничный макет", author: "Александр Ларцев", date: "17 марта 2025", category: "POSTERS")
        // Add more posts...
    ]

    var filteredPosts: [BlogPost] {
        if selectedCategory == "ALL" {
            return allPosts
        } else {
            return allPosts.filter { $0.category == selectedCategory }
        }
    }
}
