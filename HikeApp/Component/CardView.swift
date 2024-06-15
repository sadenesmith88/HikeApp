//
//  CardView.swift
//  HikeApp
//
//  Created by sade on 6/15/24.
//

import SwiftUI

struct CardView: View {

// MARK: - PROPERTIES

  @State private var imageNumber: Int = 1
  @State private var randomNumber: Int = 1
  @State private var isSHowingSheet: Bool = false
// MARK: - FUNCTIONS

  func randomImage() {

    print("the button was pressed")
    print("Status: old image number = \(imageNumber)")
    repeat {
      randomNumber = Int.random(in: 1...5)
      print("Action: Random Number Generated = \(randomNumber)")
    } while randomNumber == imageNumber


    imageNumber = randomNumber
    print("Result: new image number = \(imageNumber)")
    print("The End")
    print("\n")
  }


    var body: some View {

      //MARK: - CARD

      ZStack {
        CustomBackgroundView()

        VStack {
          //MARK: - HEADER
          VStack(alignment: .leading) {
            HStack {
              Text("Hiking")
                .fontWeight(.black)
                .font(.system(size: 52))
                .foregroundStyle(
                  LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                )

              Spacer()

              Button {
                //ACTION: show a sheet
                isSHowingSheet.toggle()
              } label: {
                CustomButtonView()
              }
              .sheet(isPresented: $isSHowingSheet, content: {
                SettingsView()
                  .presentationDragIndicator(.visible)
                  .presentationDetents([.medium, .large])
              })
            }

            Text("Fun and enjoyable outdoor activity for friends and families")
              .multilineTextAlignment(.leading)
              .italic()
              .foregroundColor(.customGrayMedium)

          } //: HEADER
          .padding(40)

          //MARK: - MAIN CONTENT





          ZStack {
          CustomCircleView()

            Image("image-\(imageNumber)")
              .resizable()
              .scaledToFit()
              .animation(.default, value: imageNumber)
          }

          //MARK: - FOOTER

          Button {
            //ACTION: Generate random number
            print("button was pressed.")
            randomImage()
          } label: {
            Text("Explore more")
              .font(.title2)
              .fontWeight(.heavy)
              .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom
                                             )
              )
              .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
          }
          .buttonStyle(GradientButton())

        }
      }
      //: CARD
      .frame(width: 320, height: 670)
    }
}


#Preview {
    CardView()
}
