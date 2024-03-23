//
//  ThreadsTextFieldModifier.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(15)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}

