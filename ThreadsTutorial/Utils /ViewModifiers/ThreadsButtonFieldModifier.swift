//
//  ThreadsButtonFieldModifier.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct ThreadsButtonFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 352, height: 50)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(8)
    }
}
