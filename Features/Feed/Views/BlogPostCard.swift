//
//  BlogPostCard.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 25.06.2025.
//


import SwiftUI

struct BlogPostCard: View {
    let post: BlogPost

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 180)
                .frame(width: 380)
                .clipped()
                .cornerRadius(6)

            Text(post.title)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.black)

            HStack {
                Text(post.author)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                Spacer()
                Text(post.date)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
        }
    }
}
