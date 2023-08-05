//
//  PostList.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 8/5/23.
//

import SwiftUI

struct PostList: View {
    // MARK: - PROPERTIES

    @State var posts: [Post] = []

    // MARK: - BODY

    var body: some View {
        List(posts) { post in
            Text(post.title)
        }
        .listStyle(.plain)
        .onAppear {
            Api().getPosts { posts in
                self.posts = posts
            }
        }
    }
}

// MARK: PREVIEW

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
