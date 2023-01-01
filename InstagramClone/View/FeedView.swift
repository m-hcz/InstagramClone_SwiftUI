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
					ForEach(posts) { post in
						PostCardView(post: post)
					}
                }
				.padding(.bottom, 40)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct PostCardView: View {
	
	@State var text = ""
	var post: Post
	
	var body: some View {
		VStack(spacing: 15.0) {
			HStack(spacing: 15.0) {
				Image(systemName: "person.fill")
					.resizable()
					.scaledToFill()
					.frame(width: 45)
					.clipShape(Circle())
				
				Text(post.user)
					.fontWeight(.semibold)
				
				Spacer()
				
				Button {
					
				} label: {
					Image(systemName: "line.horizontal.3")
						.foregroundColor(.primary)
				}

			}
			
			RoundedRectangle(cornerRadius: 15)
				.frame(width: rect.width - 30, height: 300)
			
			HStack(spacing: 15) {
				Button(action: {}) {
					Image(systemName: "suit.heart.fill")
						.font(.system(size: 25))
				}
				Button(action: {}) {
					Image(systemName: "paperplane")
						.font(.system(size: 25))
				}
				
				Spacer()
				
				Button(action: {}) {
					Image(systemName: "bookmark")
						.font(.system(size: 25))
				}
			}
			.foregroundColor(.primary)
			
			(
				Text("\(post.user)  ")
					.bold()
				+
				Text(post.title)
			)
			.frame(maxWidth: .infinity, alignment: .leading)
			.padding(.leading, 6)
			
			HStack(spacing: 15) {
				Image(systemName: "apple.logo")
					.resizable()
					.foregroundColor(.primary)
					.scaledToFill()
					.frame(width: 25)
				
				TextField("Add a comment...", text: $text)
			}
			.padding(.leading, 6)
			
			Text(post.time)
				.font(.caption)
				.bold()
				.foregroundColor(.gray)
				.frame(maxWidth: .infinity, alignment: .leading)
				.padding(.leading, 6)
		}
		.padding()
	}
}
