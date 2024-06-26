//
//  SettingsView.swift
//  HikeApp
//
//  Created by sade on 6/15/24.
//

import SwiftUI

struct SettingsView: View {
  var body: some View {
    List {
      //MARK: - SECTION: HEADER
      Section {
        HStack {
          Spacer()
          Image(systemName: "laurel.leading")
            .font(.system(size: 80, weight: .black))
          VStack(spacing: -10) {
            Text("Hike")
              .font(.system(size: 66, weight: .black))
            Text("Editors' Choice")
              .fontWeight(.medium)

          }

          Image(systemName: "laurel.trailing")
            .font(.system(size: 80, weight: .black))

          Spacer()
        }
        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom))
        .padding(.top, 8)

        VStack(spacing: 8) {
          Text("Where can you find \nperfect tracks?")
            .font(.title2)
            .fontWeight(.heavy)

          Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
            .font(.footnote)
            .italic()

          Text("Dust off the boots! its time for a walk.")
            .fontWeight(.heavy)
            .foregroundColor(.customGreenMedium)
        }
        .multilineTextAlignment(.center)
        .padding(.bottom, 16)
        .frame(maxWidth: .infinity)
      } //: HEADER
      .listRowSeparator(.hidden)
      //MARK: - SECTION: ICONS


      //MARK: - SECTION: ABOUT
      Section (
        header:Text("ABOUT THE APP"),
        footer: HStack {
          Spacer()
          Text("Copyright © All right reserved.")
          Spacer()
        }
          .padding(.vertical, 8)
      ) {
//1. Basic Labeled Content
//        LabeledContent("Application", value: "Hike")

        //2. Advanced Labeled Content
        CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
        CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
        CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
        CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
        CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Sade Nesmith", rowTintColor: .mint)
        CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
        CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Credo Academy", rowLinkDestination: "https://credo.academy")

        }

      } //: SECTION

    }//: LIST
  }


#Preview {
    SettingsView()
}
