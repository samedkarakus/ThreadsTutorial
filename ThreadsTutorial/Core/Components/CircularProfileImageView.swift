//
//  CircularProfileImageView.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 21.03.2024.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("random-woman-2")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 40, height: 40)
            .overlay {
                Circle()
                    .stroke(Color(.systemGray4), lineWidth: 1)
            }
    }
}

struct CircularProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProfileImageView()
    }
}
