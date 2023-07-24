//
//  BottomCardView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/15/23.
//

import SwiftUI

struct BottomCardView: View {
    // MARK: - PROPERTIES
    @Binding var show: Bool
    var color1 = Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))

    // MARK: - BODY

    var body: some View {
        VStack(spacing: 20) {
            RoundedRectangle(cornerRadius: 3)
                .frame(width: 40, height: 5)
                .opacity(0.1)
            Text("This certificate is proof that Ehsan has achieved the UI Design course with approval from a Design+Code instructor.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .fontWeight(.semibold)
                .lineSpacing(4)

            RingView(color1: color1, color2: color2, width: 88, height: 88, percent: 78, show: $show)
//                .animation(Animation.easeInOut, value: show)

            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

// MARK: PREVIEW

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView(show: .constant(true))
    }
}
