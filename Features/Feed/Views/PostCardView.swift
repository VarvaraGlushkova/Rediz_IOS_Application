//
//  PostCardView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//

import SwiftUI

struct PostCardView: View {
    let post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .frame(width: 370)
                .cornerRadius(8)

            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(post.title)
                        .font(.system(size: 18, weight: .bold))
                    Text(post.username)
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

