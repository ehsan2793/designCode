//
//  PostList.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 8/5/23.
//

import SwiftUI

struct PostList: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                Api().getPosts()
            }
    }
}

// MARK: PREVIEW

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
