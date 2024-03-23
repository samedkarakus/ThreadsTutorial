//
//  UserCell.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 21.03.2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack (alignment: .top){
            CircularProfileImageView()
            VStack {
                HStack (alignment: .top){
                    VStack (alignment: .leading, spacing: 3) {
                        HStack (alignment: .center, spacing: 5){
                            Text("adrianareyes")
                                .font(.footnote)
                            .fontWeight(.semibold)
                            Image("verified")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        }
                        Text("Adriana Reyes")
                            .font(.footnote)
                            .foregroundColor(Color(.systemGray2))
                        HStack {
                            Image("random-woman-2")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 12, height: 12)
                            Text("53.2B")
                                .font(.caption)
                        }
                        .padding(.top, 10)
                    }
                    
                    Spacer()
                    
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 100, height: 32)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(.systemGray5), lineWidth: 1)
                        }

                }
                Divider()
            }
        }
        .padding(.horizontal)
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
