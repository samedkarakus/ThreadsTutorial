//
//  EditProfileView.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 23.03.2024.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                VStack (alignment: .leading){
                    HStack {
                        VStack (alignment: .leading, spacing: 3){
                            Text("Name")
                                .fontWeight(.semibold)
                            HStack (spacing: 3){
                                Image(systemName: "lock")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 15, height: 15)
                                Text("Angeina Diaz (@angelina.diaz)")
                            }
                            Divider()
                                .padding(.vertical)
                        }
                        Spacer()
                        CircularProfileImageView()
                    }
                    VStack (alignment: .leading){
                        Text("Biography")
                            .fontWeight(.semibold)
                        .padding(.bottom, 0.5)
                        TextField("Enter your bio...", text: $bio, axis: .vertical)
                            .multilineTextAlignment(.leading)
                        Divider()
                            .padding(.vertical, 5)
                        VStack(alignment: .leading) {
                            Text("Link")
                                .fontWeight(.semibold)
                            .padding(.bottom, 0.5)
                            TextField("+ Add link", text: $link)
                                .multilineTextAlignment(.leading)
                        }
                        Divider()
                            .padding(.vertical, 5)
                    }
                    HStack (alignment: .top){
                        VStack (alignment: .leading, spacing: 3){
                            Text("Private Profile")
                              .fontWeight(.semibold)
                            
                            Text(isPrivateProfile ? "Private Description Example, in a bustling city, a cozy café awaits with ivy-covered walls." : "Public Description Example, in a bustling city, a cozy café awaits with ivy-covered walls in a bustling city, a cozy café.")
                                .foregroundColor(Color(.systemGray2))
                        }
                        
                        Toggle("", isOn: $isPrivateProfile)
                            .tint(colorScheme == .dark ? Color(.white) : Color(.black))
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                }
                .font(.footnote)
                .padding()
                .background(colorScheme == .dark ? Color(.systemGray6) : Color(.white))
                .cornerRadius(10)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray5 ), lineWidth: 1)
                }
                .padding()
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(colorScheme == .dark ? Color(.white) : Color(.black))
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Done"){
                        
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
