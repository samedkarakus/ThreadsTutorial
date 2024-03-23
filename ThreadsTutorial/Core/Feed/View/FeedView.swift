//
//  FeedView.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView (showsIndicators: false){
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { threads in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refreshing threads")
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Spacer()
                        Image("threads-icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                        Spacer()
                    
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
