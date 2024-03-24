//
//  CreateThreadView.swift
//  ThreadsTutorial
//
//  Created by Samed Karakuş on 20.03.2024.
//

import SwiftUI

struct CreateThreadView: View {
    @Environment (\.colorScheme) var colorScheme
    @State private var caption = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack (alignment: .top, spacing: 15){
                    CircularProfileImageView()
                    VStack (alignment: .leading, spacing: 8){
                        HStack (alignment: .top){
                            VStack (alignment: .leading){
                                Text("angelina.diaz")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                TextField("What's up?", text: $caption, axis: .vertical)
                                    .font(.subheadline)
                            }
                            Spacer()
                            
                            if !caption.isEmpty {
                                Button {
                                    caption = ""
                                } label: {
                                    Image(systemName: "xmark")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 12, height: 12)
                                        .foregroundColor(Color(.systemGray2))

                                }
                            }
                        }
                        HStack (spacing: 20){
                            Button {
                                
                            } label: {
                                Image(systemName: "photo.on.rectangle.angled")
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "camera")
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "doc.text")
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "mic")
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "number")
                            }
                            Button {
                                
                            } label: {
                                Image(systemName: "text.alignleft")
                            }
                        }
                        .foregroundColor(Color(.systemGray2))
                        .padding(.vertical)
                        Text("Add to script")
                            .font(.subheadline)
                            .foregroundColor(Color(.systemGray2))
                    }
                }
                Spacer()
                
                HStack {
                    Text("Everyone can reply")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray2))
                    Spacer()
                    Button(action: {
                        if !caption.isEmpty {
                            caption = ""
                        }
                    }) {
                        Text("Share")
                            .padding(.horizontal)
                            .frame(height: 40)
                            .background(!caption.isEmpty ? (colorScheme == .dark ? .white : .black) : Color(.systemGray2))
                            .foregroundColor(colorScheme == .dark ? .black : .white)
                            .cornerRadius(25)
                            .fontWeight(.semibold)
                            .disabled(caption.isEmpty)
                    }
                }

            }
            .padding()
            Spacer()
            .toolbar {
                ToolbarItem (placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Text("Cancel")
                            .font(.subheadline)
                            .foregroundColor(colorScheme == .dark ? Color(.white) : Color(.black))
                    }

                }
            }
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CreateThreadView_Previews: PreviewProvider {
    static var previews: some View {
        CreateThreadView()
    }
}
