//
//  ContentView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES

    @State private var show = false

    // MARK: - BODY

    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default, value: show)

            BackCardView() //: VSTACK
                .background(show ? Color("card3") : Color("card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -400 : -40)
                .scaleEffect(0.9)
                .rotationEffect(Angle(degrees: show ? 0 : 10))
                .rotation3DEffect(Angle(degrees: 10), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.5), value: show)

            BackCardView() //: VSTACK
                .background(show ? Color("card4") : Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -210 : -20)
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: show ? 0 : 5))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3), value: show)

            CardView()
                .blendMode(.hardLight)
                .onTapGesture {
                    show.toggle()
                }

            BottomCardView()
                .blur(radius: show ? 20 : 0)
                .animation(.default, value: show)
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
