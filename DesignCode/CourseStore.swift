//
//  CourseStore.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 8/6/23.
//

import Foundation
import Contentful

let client = Client(spaceId: "Oge8xzmnbp2c", accessToken: "qwzom9J2KNVAKESSYAboYHIZQ0o|gAdTE374eYz_V4s")

func getArray(){
    let query = Query.where(contentTypeId: "course")
    
    client.fetchArray(of: Entry.self, matching: query) { result in
        print(result)
    }
}
