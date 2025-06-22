//
//  FeedItem.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import Foundation

enum FeedItem: Identifiable {
    case post(Post)
    case task(Task)

    var id: UUID {
        switch self {
        case .post(let post): return post.id
        case .task(let task): return task.id
        }
    }

    var category: String {
        switch self {
        case .post(let post): return post.category
        case .task(let task): return task.category
        }
    }
}
