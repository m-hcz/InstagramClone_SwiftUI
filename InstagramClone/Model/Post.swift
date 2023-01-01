//
//  Post.swift
//  InstagramClone
//
//  Created by M H on 01/01/2023.
//

import SwiftUI

struct Post: Identifiable {
	var id = UUID().uuidString
	var user : String
	var profile: String
	var title: String
	var time: String
}

var posts = [
	Post(user: "Adam", profile: "p1", title: "iPhone 11", time: "58 min ago"),
	Post(user: "Davis", profile: "p2", title: "iPhone 12", time: "2 min ago"),
	Post(user: "Carl", profile: "p3", title: "iPhone 18", time: "5 min ago"),
	Post(user: "Tom", profile: "p4", title: "iPhone 1", time: "8 min ago")
]
