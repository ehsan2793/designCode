//
//  ContentView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                    .frame(width: 300, height: 220)
                    .background(.blue)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                    .offset(x: 0, y: -20)
            } //: VSTACK
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("UI Design")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("Certificate")
                            .foregroundColor(Color("accent"))
                    } //: VSTACK
                    Spacer()
                    Image("Logo1")
                } //: HSTACK
                .padding()
                Spacer()
                Image("Card1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 110, alignment: .top)
            } //: VSTACK
            .frame(width: 340, height: 220)
            .background(Color.black)
            .cornerRadius(20)
            .shadow(radius: 20)
        } //: ZSTACK
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
