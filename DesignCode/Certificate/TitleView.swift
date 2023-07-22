//
//  TitleView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/15/23.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack {
            Text("Certificates")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            Image("Background1")
                .resizable()
                .scaledToFit()
            Spacer()
        }
    }
}

// MARK: PREVIEW

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
