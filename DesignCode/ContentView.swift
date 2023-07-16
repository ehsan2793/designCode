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
    @State private var viewState = CGSize.zero
    @State private var showCard = false

    // MARK: - BODY

    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .opacity(showCard ? 0.4 : 1)
                .offset(x: 0, y: showCard ? -200 : 0)
                .animation(
                    Animation.default
                        .delay(0.1),
                    value: showCard)

            BackCardView() //: VSTACK
                .frame(width: showCard ? 300 : 340, height: 220)
                .background(show ? Color("card3") : Color("card4"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -400 : -40)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -180 : 0)
                .scaleEffect(showCard ? 1 : 0.9)
                .rotationEffect(Angle(degrees: show ? 0 : 10))
                .rotationEffect(Angle(degrees: showCard ? -10 : 0))
                .rotation3DEffect(Angle(degrees: showCard ? 0 : 10), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.5), value: show || showCard)

            BackCardView() //: VSTACK
                .frame(width: 340, height: 220)
                .background(show ? Color("card4") : Color("card3"))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -210 : -20)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -140 : 0)
                .scaleEffect(showCard ? 1 : 0.95)
                .rotationEffect(Angle(degrees: show ? 0 : 5))
                .rotationEffect(Angle(degrees: showCard ? -5 : 0))
                .rotation3DEffect(Angle(degrees: showCard ? 0 : 5), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3), value: show || showCard)

            CardView()
                .frame(width: showCard ? 375 : 340, height: 220)
                .background(Color.black)
                .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
                .shadow(radius: 20)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -100 : 0)
                .blendMode(.hardLight)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0), value: viewState != .zero || showCard)
                .onTapGesture {
                    showCard.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            viewState = value.translation
                            show = true
                        }
                        .onEnded { _ in
                            viewState = .zero
                            show = false

                        }
                )

            BottomCardView()
                .offset(x: 0, y: showCard ? 560 : 1000)
                .blur(radius: show ? 20 : 0)
                .animation(.default, value: showCard)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0), value: showCard)
        } //: ZSTACK
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
