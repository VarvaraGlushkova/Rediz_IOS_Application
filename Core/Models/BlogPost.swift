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
}
