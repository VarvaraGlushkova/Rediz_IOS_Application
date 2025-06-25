//
//  BlogPost.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import Foundation

struct BlogPost: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let author: String
    let date: String
    let category: String
    let article: BlogArticle
}

struct BlogArticle: Identifiable {
    let id = UUID()
    let title: String
    let authorName: String
    let authorPosition: String
    let authorAvatar: String
    let image: String
    let date: String
    let readTime: String
    let content: [BlogSection]
    let category: String
}

struct BlogSection {
    let heading: String?
    let body: String
    let image: String?
}
