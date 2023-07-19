//
//  HomeView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/18/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES

    @Binding var showProfile: Bool

    // MARK: - BODY

    var body: some View {
        VStack {
            HStack {
                Text("Watching")
                    .font(.system(size: 28, weight: .bold))

                Spacer()

                AvatarView(showProfile: $showProfile)
            } //: HSTACK
            .padding(.horizontal)
            .padding(.leading, 14)
            .padding(.top, 30)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { _ in
                        SectionView()
                    } //: LOOP
                } //: HSTACK
                .padding(30)
                .padding(.bottom, 30)
            } //: SCROLL

            Spacer()
        } //: VSTACK
    }
}

// MARK: PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(true))
    }
}

struct SectionView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Prototype designs in SwiftUI")
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(Color.white)

                Spacer()

                Image("Logo1")
            } //: HSTACK

            Text("18 Sections".uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)

            Image("Card1")
                .resizable()
                .scaledToFit()
                .frame(width: 210)
        }
        .padding([.top, .horizontal], 20)
        .frame(width: 275, height: 275)
        .background(Color("card1"))
        .cornerRadius(30)
        .shadow(color: Color("card1").opacity(0.3), radius: 20, x: 0, y: 20)
    }
}
