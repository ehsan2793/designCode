//
//  BottomCardView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/15/23.
//

import SwiftUI

struct BottomCardView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack(spacing:20) {
            RoundedRectangle(cornerRadius: 3)
                .frame(width: 40, height: 5)
                .opacity(0.1)
            Text ("This certificate is proof that Ehsan has achieved the UI Design course with approval from a Design+Code instructor.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            
            
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal)
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(x: 0, y: 500)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

// MARK: PREVIEW

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
    }
}
