//
//  MenuView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/16/23.
//

import SwiftUI

struct MenuView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 16) {
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Biling", icon: "creditcard")
                MenuRow(title: "Sign out", icon: "person.crop.circle")
            } //: VSTACK
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(radius: 30)
            .padding(.horizontal, 30)
        } //: VSTACK
        .padding(.bottom, 30)
    }
}

// MARK: PREVIEW

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    var title: String
    var icon: String

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}