//
//  Task.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import Foundation

//struct Task: Identifiable {
//    let id = UUID()
//    let imageName1: String
//    let imageName2: String
//    let title: String
//    let username: String
//    let category: String
//}
struct DesignTask: Identifiable {
    let id = UUID()
    let imageName1: String
    let imageName2: String
    let title: String
//    let description: String
    let username: String
    let category: String
    let redesigns: [Post]
}
