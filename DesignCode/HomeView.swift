//
//  HomeView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/17/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES

    @State private var showProfile = false

    // MARK: - BODY

    var body: some View {
        ZStack {
            Color.gray.opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Watching")
                        .font(.system(size: 28, weight: .bold))

                    Spacer()

                    Button(action: { showProfile.toggle() }) {
                        Image("Avatar")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 36, height: 36)
                            .clipShape(Circle())
                    }
                } //: HSTACK
                .padding(.horizontal)
                .padding(.top, 30)

                Spacer()
            } //: VSTACK
            .padding(.top, 44)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .offset(y: showProfile ? -450 : 0)
            .rotation3DEffect(Angle(degrees: showProfile ? -10 : 0), axis: (x: 10.0, y: 0, z: 0))
            .scaleEffect(showProfile ? 0.9 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0), value: showProfile)
            .edgesIgnoringSafeArea(.all)

            MenuView()
                .offset(y: showProfile ? 0 : 600)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0), value: showProfile)
        } //: ZSTACK
    }
}

// MARK: PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
