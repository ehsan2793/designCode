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
    @Binding var showContent: Bool

    // MARK: - BODY

    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Watching")
                        //                    .font(.system(size: 28, weight: .bold))
                        .modifier(CustomFontModifier(size: 28))

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
                        UpdateList()
                    }
                } //: HSTACK
                .padding(.horizontal)
                .padding(.leading, 14)
                .padding(.top, 30)

                ScrollView(.horizontal, showsIndicators: false) {
                    WatchRingsView()
                        .padding(.horizontal, 30)
                        .padding(.bottom, 30)
                        .onTapGesture {
                            showContent = true
                        }
                } //: SCROLL

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 5) {
                        ForEach(sectionData) { section in
                            GeometryReader { geometry in
                                SectionView(section: section)
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
                .offset(y: -30)

                HStack {
                    Text("Courses")
                        .font(.title)
                        .bold()

                    Spacer()
                }
                .padding(.leading, 30)
                .offset(y: -80)

                SectionView(section: sectionData[2], width: screen.width - 60, height: 275)
                    .offset(y: -90)

                Spacer()
            }
        } //: VSTACK
    }
}

// MARK: PREVIEW

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(true), showContent: .constant(true))
    }
}

struct SectionView: View {
    // MARK: - PROPERTIES

    @State var section: Section
    @State var Logo3: UIImage = #imageLiteral(resourceName: "Logo3")
    var width: CGFloat = 275
    var height: CGFloat = 275

    // MARK: - BODY

    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(.system(size: 24, weight: .bold))
                    .frame(width: 160, alignment: .leading)
                    .foregroundColor(Color.white)
//                Image(uiImage: Logo3)
                Spacer()

                Image(section.logo)
            } //: HSTACK
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)

            section.image
                .resizable()
                .scaledToFit()
                .frame(width: 210)
        } //: VSTACK
        .padding([.top, .horizontal], 20)
        .frame(width: width, height: height)
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

struct WatchRingsView: View {
    var color1 = Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    var set2color1 = Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
    var set2color2 = Color(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
    var set3color1 = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    var set3color2 = Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    var body: some View {
        HStack(spacing: 30.0) {
            HStack(spacing: 12.0) {
                RingView(color1: color1, color2: color2, width: 44, height: 44, percent: 32, show: .constant(true))
                VStack(alignment: .leading, spacing: 4.0) {
                    Text("6 minutes left")
                        .bold()
                        .modifier(FontModifier(style: .subheadline))
                    Text("Watched 10 minutes today")
                        .modifier(FontModifier(style: .caption))
                } //: VSTACK
                .modifier(FontModifier())
            } //: HSTACK
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(ShadowModifier())

            HStack(spacing: 12.0) {
                RingView(color1: set2color1, color2: set2color2, width: 32, height: 32, percent: 54, show: .constant(true))
            } //: HSTACK
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(ShadowModifier())

            HStack(spacing: 12.0) {
                RingView(color1: set3color1, color2: set3color2, width: 32, height: 32, percent: 74, show: .constant(true))
            } //: HSTACK
            .padding(8)
            .background(Color.white)
            .cornerRadius(20)
            .modifier(ShadowModifier())
        }
    }
}
