//
//  ProfileNavigationIcon.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 23.03.2024.
//

import SwiftUI

struct ProfileNavigationIcon: ViewModifier {
    @Environment (\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 20, height: 20)
            .foregroundColor(colorScheme == .dark ? .white : .black)
    }
}
