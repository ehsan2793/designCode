//
//  TabBar.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/22/23.
//

import SwiftUI

struct TabBar: View {
    // MARK: - PROPERTIES

    // MARK: - BODY

    var body: some View {
        TabView {
            Home()
                .tabItem {
                    Image(systemName: "play.circle.fill")
                    Text("Home")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Certificates")
                }
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

// MARK: PREVIEW

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar()
            TabBar()
                .previewDevice("iPhone SE (3rd generation)")
                
        }
    }
}
