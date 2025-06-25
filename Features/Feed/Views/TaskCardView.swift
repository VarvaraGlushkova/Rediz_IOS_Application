//
//  TaskCardView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

struct TaskCardView: View {
    let task: DesignTask

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 11) {
                Image(task.imageName1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .frame(maxWidth: 178)
                    .clipped()
                    .cornerRadius(8)

                Image(task.imageName2)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .frame(maxWidth: 178)
                    .clipped()
                    .cornerRadius(8)
            }

            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(task.title)
                        .font(.system(size: 18, weight: .bold))
                    Text(task.username)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "arrow.clockwise")
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
    }
}

//struct TaskCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        TaskCardView(task: Task(
//            imageName1: "poster1",
//            imageName2: "poster2",
//            title: "Task Redesign",
//            description: "8888",
//            username: "@rootahh",
//            category: "UI"
//        ))
//    }
//}

