//
//  CourseStore.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 8/6/23.
//

import Combine
import Contentful
import Foundation
let client = Client(spaceId: "0ge8xzmnbp2c", accessToken: "03010b0d79abcb655ca3fda453f2f493b5472e0aaa53664bc7dea5ef4fce2676")

func getArray(id: String, completion: @escaping ([Entry]) -> Void) {
    let query = Query.where(contentTypeId: id)

    client.fetchArray(of: Entry.self, matching: query) { result in
        switch result {
        case let .success(array):
            DispatchQueue.main.async {
                completion(array.items)
            }
        case let .failure(error):
            print(error)
        }
    }
}


//var image1 = #imageLiteral(resourceName: "Card2")
//var logo1 = #imageLiteral(resourceName: "Card5")
//var color = #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1)
class CourseStore: ObservableObject {
    @Published var courses: [Course] = courseData

    init() {

        getArray(id: "course") { item in
            item.forEach { item in
                self.courses.append(Course(
                    title: item.fields["title"] as! String,
                    subtitle: item.fields["subtitle"] as! String,
                    image: #imageLiteral(resourceName: "Card2") ,
                    logo:  #imageLiteral(resourceName: "Card5"),
                    color: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1),
                    show: false)
                                    
                )
                print(item.fields["title"] as! String)
            }
        }
    }
}


