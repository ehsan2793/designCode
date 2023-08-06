//
//  DataStore.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 8/5/23.
//

import Combine
import Foundation

class DataStore: ObservableObject {
    @Published var posts: [Post] = []

    init() {
        getpost()
    }

    func getpost() {
        Api().getPosts { posts in
            self.posts = posts
        }
    }
}
