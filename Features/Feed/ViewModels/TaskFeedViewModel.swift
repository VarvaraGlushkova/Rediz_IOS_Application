//
//  TaskFeedViewModel.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

class TaskFeedViewModel: ObservableObject {
    @Published var selectedCategory: String = "UI"

    private let allTasks: [Task] = [
        Task(imageName1: "poster1", imageName2: "poster2", title: "Task Redesign", username: "@rootahh", category: "UI"),
        Task(imageName1: "font1", imageName2: "font2", title: "UI Revamp", username: "@typeflow", category: "UI"),
        Task(imageName1: "logo1", imageName2: "logo2", title: "Logo Rebuild", username: "@softgrid", category: "LOGO"),
        Task(imageName1: "interior1", imageName2: "interior2", title: "Interior Study", username: "@glowup", category: "INTERIOR"),
        Task(imageName1: "poster3", imageName2: "poster4", title: "Poster Battle", username: "@inkbyte", category: "POSTERS")
    ]

    var filteredTasks: [Task] {
        if selectedCategory == "ALL" {
            return allTasks
        } else {
            return allTasks.filter { $0.category == selectedCategory }
        }
    }
}
