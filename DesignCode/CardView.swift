//
//  CardView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/15/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
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
    }
}

// MARK: PREVIEW

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}

