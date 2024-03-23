//
//  ThreadsIconModifier.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct ThreadsIconModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .scaledToFit()
            .frame(width: 100, height: 100)
            .padding()
    }
}
