//
//  CourseList.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/25/23.
//

import SwiftUI

struct CourseList: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("SwiftUi Advance")
                        .font(.system(size: 24, weight: .bold))
                    Text("20 Sections")
                } //: VSTACK
                Image("Logo1")
            } //: HSTACK
            Image("Card2")
        } //: VSTCK
    }
}

// MARK: PREVIEW

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
