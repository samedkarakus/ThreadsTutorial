//
//  ThreadCell.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack (alignment: .top, spacing: 12){
                CircularProfileImageView()
                
                VStack (alignment: .leading, spacing: 6){
                    HStack {
                        HStack (alignment: .center, spacing: 5){
                            Text("isabellagarcia3")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Image("verified")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15, height: 15)
                        }
                        
                        Spacer()
                        
                        Text("10m")
                            .font(.caption)
                            .foregroundColor(Color(.systemGray2))
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(Color(.darkGray))
                        }

                    }
                    Text("In a bustling city, a cozy café awaits with ivy-covered walls, patrons to linger over drinks and conversation.")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Image("random-image-1")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(8)
                        .padding(.vertical, 8)
                    HStack (spacing: 12){
                        Button {
                            
                        } label: {
                            Image(systemName: "heart")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bubble.right")
                        }
                        Button {
                            
                        } label: {
                            Image (systemName: "arrow.2.squarepath")
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "paperplane")
                        }

                    }
                    .foregroundColor(.black)
                    .padding(.vertical, 0)
                    HStack {
                        Button {
                            
                        } label: {
                            Text("19 replies")
                        }
                        Text("•")
                        Button {
                            
                        } label: {
                            Text("482 likes")
                        }
                    }
                    .font(.footnote)
                    .foregroundColor(Color(.systemGray2))
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding(.horizontal)
        .padding(.vertical, 6)
    }
}

struct ThreadCell_Previews: PreviewProvider {
    static var previews: some View {
        ThreadCell()
    }
}
