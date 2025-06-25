//
//  TaskFeedViewModel.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

class TaskFeedViewModel: ObservableObject {
//    @Published var tasks: [Task] = [
//            Task(
//                imageName1: "poster3",
//                imageName2: "poster4",
//                title: "POSTER DESIGN",
//                username: "@rootahh",
//                category: "POSTERS",
//                description: "Переделайте постер на свой вкус!\nЗаторомозилась в процессе и не могу сделать что-то новое, дерзайте!",
//                avatar: "avatar_rootahh",
//                redesigns: [
//                    Post(imageName: "poster5", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS"),
//                    Post(imageName: "poster6", title: "POSTER DESIGN", username: "@rootahh", category: "POSTERS")
//                ]
//            )
//        ]
    
    @Published var selectedCategory: String = "UI"

    private let allTasks: [DesignTask] = [
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

    var filteredTasks: [DesignTask] {
        if selectedCategory == "ALL" {
            return allTasks
        } else {
            return allTasks.filter { $0.category == selectedCategory }
        }
    }
}
