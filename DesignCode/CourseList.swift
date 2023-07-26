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
            CourseView()
        }
    }
}

// MARK: PREVIEW

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}

struct CourseView: View {
    var backgroundColor = Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    var shadowColor = Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))

    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("SwiftUi Advance")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)

                    Text("20 Sections")
                        .foregroundColor(Color.white.opacity(0.7))
                } //: VSTACK
                Spacer()

                Image("Logo1")
            } //: HSTACK
            Spacer()

            Image("Card2")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: 140, alignment: .top)
        } //: VSTCK
        .padding(20)
        .frame(width: screen.width - 60, height: 280)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: shadowColor.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}
