//
//  ExploreView.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack { //Her veriyi aynı anda yüklememek için, kaydırdıkça veri dolacak
                    ForEach(1 ... 10, id: \.self) { user in
                        UserCell()
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
