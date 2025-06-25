//
//  TasksTabView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 25.06.2025.
//
import SwiftUI

struct TasksTabView: View {
    let tasks: [DesignTask]

    var body: some View {
        VStack(spacing: 30) {
            ForEach(tasks) { task in
                NavigationLink(destination: TaskDetailView(task: task)) {
                    TaskCardView(task: task)
                }
                .buttonStyle(.plain)
            }
        }
//        .transition(.opacity.combined(with: .move(edge: .trailing)))
//        .animation(.easeInOut(duration: 0.3), value: tasks)
    }
}
