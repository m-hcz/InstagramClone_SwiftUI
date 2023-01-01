//
//  FeedView.swift
//  InstagramClone
//
//  Created by mhcz on 31.12.2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "plus.app")
                        .font(.title)
                        .foregroundColor(.primary)
                }

                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "paperplane")
                        .font(.title)
                        .foregroundColor(.primary)
                }
            }
            .padding()
            .overlay {
                Text("Instagram")
                    .bold()
                    .font(.title)
            }
            
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "apple.logo")
                                .resizable()
                                .foregroundColor(.primary)
                                .scaledToFill()
                                .frame(width: 55)
                        })
                            .overlay(alignment: .bottomTrailing) {
                                Image(systemName: "plus.circle.fill")
                                    .font(.title)
                                    .foregroundColor(.blue)
                                    .offset(x: 8, y: 5)
                            }
                    }
                    .padding()
                }
                
                Divider()
                    .padding(.horizontal, -15)
                
                VStack(spacing: 20) {
                    
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
