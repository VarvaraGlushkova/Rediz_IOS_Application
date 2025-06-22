//
//  Post.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let imageName: String   // or use `imageUrl` if remote
    let title: String
    let username: String
    let category: String // e.g. "POSTERS", "FONTS"
}
