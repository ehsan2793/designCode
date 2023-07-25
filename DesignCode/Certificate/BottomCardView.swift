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

            HStack(spacing: 20.0) {
                RingView(color1: color1, color2: color2, width: 88, height: 88, percent: 43, show: $show)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("SwiftUI")
                        .fontWeight(.bold)
                    
                    Text("12 of 12 sections completed \n 10 hours sepnd so far")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .lineSpacing(4)
                }
                .padding(20)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
            }

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
