//
//  BlogPostCardView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

struct BlogPostCardView: View {
    let post: BlogPost

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 180)
                .frame(width: 380)
                .cornerRadius(8)
                .clipped()

            Text(post.title)
                .font(.system(size: 16, weight: .bold))
                .fixedSize(horizontal: false, vertical: true)

            HStack {
                Text(post.author)
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
                Spacer()
                Text(post.date)
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal)
    }
}
#Preview {
    BlogView()
}
