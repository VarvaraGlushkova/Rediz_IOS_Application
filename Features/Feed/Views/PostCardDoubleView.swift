//
//  PostCardDoubleView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//


import SwiftUI

struct PostCardDoubleView: View {
    let post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 11) {
                Image(post.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 160)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .cornerRadius(8)

//                if let secondImage = post.secondImageName {
//                    Image(secondImage)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(height: 160)
//                        .frame(maxWidth: .infinity)
//                        .clipped()
//                        .cornerRadius(8)
//                }
            }

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

struct PostCardDoubleView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardDoubleView(post: Post(
            imageName: "font1",
            title: "Double Card",
            username: "@user",
            category: "FONTS"
//            secondImageName: "font2"
        ))
    }
}
