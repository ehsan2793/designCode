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
            HStack {
                Text("Certificates")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
            }
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
