//
//  PostList.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 8/5/23.
//

import SwiftUI

struct PostList: View {
    // MARK: - PROPERTIES 

    @ObservedObject var store = DataStore()

    // MARK: - BODY

    var body: some View {
        List(store.posts) { post in
            VStack(alignment: .leading, spacing: 8.0) {
                Text(post.title)
                    .font(.system(.title, design: .serif))
                    .bold()
                Text(post.body)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            } //: VSTACK
        }
        .listStyle(.plain)
    }
}

// MARK: PREVIEW

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
