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
    var id: Int
    var title: String
    var body: String
}

class Api {
    func getPosts(completion: @escaping ([Post]) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else {
                print("No data received")
                return
            }

            do {
                let posts = try JSONDecoder().decode([Post].self, from: data)
                DispatchQueue.main.async {
                    completion(posts)
                }
            } catch {
                print("Other error: \(error.localizedDescription)")
            }
        }
        .resume()
    }
}
