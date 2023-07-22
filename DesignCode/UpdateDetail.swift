//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/22/23.
//

import SwiftUI
import Foundation

struct UpdateDetail: View {
    // MARK: - PROPERTIES

     var update: Update

    // MARK: - BODY

    var body: some View {
        VStack {
            Image(update.image)
            Text(update.text)
                .foregroundColor(Color(p[0].color))
        }
        .navigationTitle(update.title)
        
    }
}

// MARK: PREVIEW

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UpdateDetail(update: updateData[0])
        }
    }
}

struct Person {
    var color: UIColor
}

var p = [Person(color: #colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255))]

