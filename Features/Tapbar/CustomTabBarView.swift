//
//  CustomTabBarView.swift
//  Rediz Application
//
//  Created by Варвара Глушкова on 22.06.2025.
//
import SwiftUI

struct TabBarItem: View {
    let icon: String
    let title: String
    var isSelected: Bool = false

    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.system(size: 20))
            Text(title)
                .font(.caption2)
        }
        .foregroundColor(isSelected ? Color.pink : .black)
        .frame(maxWidth: .infinity)
    }
}
