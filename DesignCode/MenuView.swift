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
                Text("Ehsan - 28% complete")
                    .font(.caption)

                Color.white
                    .frame(width: 38, height: 6)
                    .cornerRadius(3)
                    .frame(width: 130, height: 6, alignment: .leading)
                    .background(Color.black.opacity(0.08))
                    .cornerRadius(3)
                    .padding()
                    .frame(width: 150, height: 24)
                    .background(Color.black.opacity(0.1))
                    .cornerRadius(12)

                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Biling", icon: "creditcard")
                MenuRow(title: "Sign out", icon: "person.crop.circle")
            } //: VSTACK
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.5), Color.white.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
            )
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .offset(y: -150)
            )
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
    var color: UIColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(color))

            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
