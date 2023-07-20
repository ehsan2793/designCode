//
//  HomeView.swift
//  DesignCode
//
//  Created by Ehsan Rahimi on 7/18/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES

    @Binding var showProfile: Bool
    @State private var showupdate = false

    // MARK: - BODY

    var body: some View {
        VStack {
            HStack {
                Text("Watching")
                    .font(.system(size: 28, weight: .bold))

                Spacer()

                AvatarView(showProfile: $showProfile)
                
                Button {
                    showupdate.toggle()
                } label: {
                    Image(systemName: "bell")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.black)
                        .frame(width: 36, height: 36)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                }
                .sheet(isPresented: $showupdate) {
                    ContentView()
                }
            } //: HSTACK
            .padding(.horizontal)
            .padding(.leading, 14)
            .padding(.top, 30)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(sectionData) { item in
                        GeometryReader { geometry in
                            SectionView(section: item)
                                .rotation3DEffect(Angle(degrees:
                                                            Double(geometry.frame(in: .global).minX - 30) / -20
                                                       ), axis: (x: 0, y: 10, z: 0))
                        }
                        .frame(width: 275, height: 275)
                    } //: LOOP
                } //: HSTACK
                .padding(30)
                .padding(.bottom, 30)
            } //: SCROLL

            Spacer()
        } //: VSTACK
    }
}

// MARK: PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(true))
    }
}

struct SectionView: View {
    // MARK: - PROPERTIES

    @State var section: Section

    // MARK: - BODY

    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(Color.white)
                Image(uiImage: #imageLiteral(resourceName: "Logo3"))
                Spacer()

                Image(section.logo)
            } //: HSTACK
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)

            section.image
                .resizable()
                .scaledToFit()
                .frame(width: 210)
        }
        .padding([.top, .horizontal], 20)
        .frame(width: 275, height: 275)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var logo: String
    var image: Image
    var color: Color
}

let sectionData: [Section] = [
    Section(title: "Prototype designs in SwiftUI", text: "18 Sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card4")), color: Color(#colorLiteral(red: 0.292, green: 0.081, blue: 0.6, alpha: 255))),
    Section(title: "Build SwiftUI app", text: "20 Sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Background1")), color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))),
    Section(title: "SwiftUI Advance", text: "20 Sections", logo: "Logo1", image: Image(uiImage: #imageLiteral(resourceName: "Card2")), color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))),
]





