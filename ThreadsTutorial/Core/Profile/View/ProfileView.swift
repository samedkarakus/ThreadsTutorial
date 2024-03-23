//
//  ProfileView.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    var body: some View {
        NavigationView {
            ScrollView (showsIndicators: false) {
                VStack (alignment: .leading){
                    HStack {
                        VStack (alignment: .leading, spacing: 3){
                            Text("Angelina Diaz")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("angelina.diaz")
                                .font(.subheadline)
                                .foregroundColor(Color(.systemGray))
                        }
                        .padding(.vertical)
                        
                        Spacer()
                        
                        Image("random-woman-2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 64, height: 64)
                            .clipShape(Circle())
                            .overlay(
                                ZStack {
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 20, height: 20)
                                        .offset(x: -22, y: 22)
                                    
                                    Image("verified")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .offset(x: -22, y: 22)
                                }
                            )
                    }
                    VStack (alignment: .leading) {
                        VStack  {
                            Text("Description Example, in a bustling city, a cozy café awaits with ivy-covered walls.")
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                        }
                        HStack{
                            Image("random-woman-1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .clipShape(Circle())
                            Text("161K Followers")
                                .font(.footnote)
                                .foregroundColor(Color(.systemGray))
                        }
                    }
                    GeometryReader { geometry in
                        HStack {
                            Button {
                                
                            } label: {
                                Text("Follow")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .frame(height: 32)
                                    .frame(minWidth: 0, maxWidth: geometry.size.width / 2)
                                    .background(.black)
                                    .cornerRadius(8)
                            }
                            Button {
                                
                            } label: {
                                Text("Mention")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.black)
                                    .frame(height: 32)
                                    .frame(minWidth: 0, maxWidth: geometry.size.width / 2)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(Color(.systemGray4), lineWidth: 1)
                                    )
                            }
                        }
                    }
                    .padding(.vertical)

                }
                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            GeometryReader { geometry in
                                VStack{
                                    Text(filter.title)
                                        .font(.subheadline)
                                        .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                    if selectedFilter == filter {
                                        Rectangle()
                                            .foregroundColor(.black)
                                            .frame(height: 1)
                                            .frame(minWidth: 0, maxWidth: geometry.size.width)
                                            .matchedGeometryEffect(id: "item", in: animation)
                                    } else {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation (.spring()) {
                                        selectedFilter = filter
                                    }
                                }
                            }
                        }
                    }
                    
                    LazyVStack {
                        ForEach (0 ... 10, id: \.self) { thread in
                            ThreadCell()
                        }
                    }
                    .padding(.top, 25)
                }
                .padding(.top)
            }
            .padding(.horizontal)
            .refreshable {
                print("DEBUG: Refreshing threads")
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Button{
                            
                        } label: {
                            Image(systemName: "chevron.left")
                            Text("Back")
                                .font(.subheadline)
                        }
                        .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .primaryAction){
                    HStack {
                        Button {
                            
                        } label: {
                            Image("instagram")
                                .resizable()
                                .modifier(ProfileNavigationIcon())
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "bell")
                                .resizable()
                                .modifier(ProfileNavigationIcon())
                        }
                        Button {
                            
                        } label: {
                            Image(systemName: "ellipsis.circle")
                                .resizable()
                                .modifier(ProfileNavigationIcon())
                        }
                    }
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
