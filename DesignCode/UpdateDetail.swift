//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/22/23.
//

import Foundation
import SwiftUI

struct UpdateDetail: View {
    // MARK: - PROPERTIES

    var update: Update

    // MARK: - BODY

    var body: some View {
        List {
            VStack {
                Image(update.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)

                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            } //: VSTACK
            .navigationTitle(update.title)
        } //: LIST
        .listStyle(PlainListStyle())
    }
}

// MARK: PREVIEW

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail(update: updateData[0])
    }
}
