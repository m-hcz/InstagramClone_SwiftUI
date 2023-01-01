//
//  Home.swift
//  InstagramClone
//
//  Created by mhcz on 31.12.2022.
//

import SwiftUI

struct Home: View {
    
    @State var selectedTab = "house.fill"
    @Environment(\.colorScheme) var scheme
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
           FeedView()
                .tag("house.fill")
            Text("magnifyingglass")
                .tag("magnifyingglass")
            Text("airplayvideo")
                .tag("airplayvideo")
            Text("suit.heart.fill")
                .tag("suit.heart.fill")
            Text("person.circle")
                .tag("person.circle")
            
        }
        .overlay(alignment: .bottom) {
            VStack(spacing: 12) {
                Divider()
                    .padding(.horizontal, -15)
                
                HStack(spacing: 0.0) {
                   TabBarButton(image: "house.fill", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                   TabBarButton(image: "magnifyingglass", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                   TabBarButton(image: "airplayvideo", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                   TabBarButton(image: "suit.heart.fill", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                   TabBarButton(image: "person.circle", selectedTab: $selectedTab)
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(.horizontal)
            .padding(.bottom, edges?.bottom ?? 15)
            .background(scheme == .dark ? .black : .white)
        }
        .ignoresSafeArea()
    }
}

struct TabBarButton: View {
    var image: String
    @Binding var selectedTab: String
    
    var body: some View {
        Button {
            selectedTab = image
        } label: {
            Image(systemName: image)
                .font(.title2)
                .foregroundColor(selectedTab == image ? .primary : .gray)
        }

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
