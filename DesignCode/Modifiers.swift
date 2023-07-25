//
//  Modifiers.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/24/23.
//

import SwiftUI

struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
    }
}

struct FontModifier: ViewModifier {
    var style: Font.TextStyle = .body
    func body(content: Content) -> some View {
        content
            .font(.system(style, design: .rounded))
    }
}



struct CustomFontModifier: ViewModifier {
    var size: CGFloat = 28
    func body(content:Content) -> some View {
        content
            .font(.custom("WorkSans-Regular", size: size))
    }
}
