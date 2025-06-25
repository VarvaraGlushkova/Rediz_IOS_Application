//
//  TaskDetailView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 25.06.2025.
//


import SwiftUI

struct TaskDetailView: View {
    let task: DesignTask

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 16) {
//                // Back button and title
//                HStack {
//                    Image(systemName: "chevron.left")
//                    Spacer()
//                    Text("TASK")
//                        .font(.system(size: 20, weight: .semibold))
//                    Spacer()
//                    Image(systemName: "chevron.left").opacity(0) // placeholder
//                }
//                .padding(.horizontal)

                // Image
                Image(task.imageName1)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .frame(width: 370)
                    .cornerRadius(8)

                // Title
                Text(task.title.uppercased())
                    .font(.system(size: 22, weight: .semibold))
                    .padding(.horizontal)

                // Description
//                Text(task.description)
//                    .font(.system(size: 14))
//                    .foregroundColor(.gray)
//                    .padding(.horizontal)

                // Author
                HStack(alignment: .center, spacing: 16) {
//                    Image(task.avatar)
//                        .resizable()
//                        .frame(width: 30, height: 30)
//                        .clipShape(Circle())

                    Text(task.username)
                        .font(.system(size: 14, weight: .medium))

                    Spacer()

                    Image(systemName: "heart")
                    Image(systemName: "heart.fill")
                }
                .padding(.horizontal)

                // Related posts
                Text("РЕДИЗКИ")
                    .font(.system(size: 16, weight: .bold))
                    .padding(.horizontal)

                VStack(spacing: 20) {
                    ForEach(task.redesigns) { post in
                        PostCardView(post: post)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
        }
    }
}
