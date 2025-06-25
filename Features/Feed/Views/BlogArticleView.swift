//
//  BlogArticleView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 25.06.2025.
//


import SwiftUI

struct BlogArticleView: View {
    let post: BlogArticle

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(post.title)
                    .font(.title2.bold())
                
                HStack {
                    Image(post.authorAvatar)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    VStack(alignment: .leading) {
                        Text(post.authorName)
                            .bold()
                        Text(post.authorPosition)
                            .font(.caption)
                    }
                    Spacer()
                    Label(post.readTime, systemImage: "clock")
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                Text(post.date)
                    .font(.caption)
                    .foregroundColor(.gray)

                ForEach(post.content.indices, id: \.self) { i in
                    let section = post.content[i]
                    if let heading = section.heading {
                        Text(heading.uppercased())
                            .font(.headline)
                    }
                    Text(section.body)
                        .font(.body)
                    if let img = section.image {
                        Image(img)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
