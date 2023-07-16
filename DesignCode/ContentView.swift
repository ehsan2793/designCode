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
                .offset(x: viewState.width, y: viewState.height)
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
                .offset(x: viewState.width, y: viewState.height)
                .scaleEffect(0.95)
                .rotationEffect(Angle(degrees: show ? 0 : 5))
                .rotation3DEffect(Angle(degrees: 5), axis: (x: 10, y: 0, z: 0))
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3), value: show)

            CardView()
                .offset(x: viewState.width, y: viewState.height)
                .blendMode(.hardLight)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0), value: viewState)
                .onTapGesture {
                    show.toggle()
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
