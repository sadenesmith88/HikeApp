//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by sade on 6/15/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration
      .label
      .padding(.vertical)
      .padding(.horizontal, 30)
      .background(
        //Conditional statement with Nil COalescing
        //Condition ? A : B
        configuration.isPressed ?
        // A : when user pressed button
        LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom) :
        // B : when button is not pressed
        LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
      )
      .cornerRadius(40)
  }
}
