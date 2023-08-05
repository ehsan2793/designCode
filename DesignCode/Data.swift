//
//  Data.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 8/5/23.
//

import Foundation
import SwiftUI

// codable: that we can use json format
// Identifiable: we can loop through the data
struct Post: Codable, Identifiable {
    var id = UUID()
    var title: String
    var body: String
}

class Api {
    func getPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, _ in
            do {
                let posts = try JSONDecoder().decode([Post].self, from: data!)
                print(posts)

            } catch {
                print("Api called failed check Data.swift file")
            }
        }
        .resume()
    }
}
