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
    func getPosts() {
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
                print(posts)

            } catch let decodingError as DecodingError {
                switch decodingError {
                case let .dataCorrupted(context):
                    print("Data corrupted: \(context.debugDescription)")
                case let .keyNotFound(key, context):
                    print("Key '\(key)' not found: \(context.debugDescription)")
                case let .typeMismatch(type, context):
                    print("Type '\(type)' mismatch: \(context.debugDescription)")
                case let .valueNotFound(type, context):
                    print("Value of type '\(type)' not found: \(context.debugDescription)")
                @unknown default:
                    print("Decoding error: \(decodingError.localizedDescription)")
                }
            } catch {
                print("Other error: \(error.localizedDescription)")
            }
        }
        .resume()
    }
}
