//
//  CustomBackgroundView.swift
//  HikeApp
//
//  Created by sade on 6/15/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
      ZStack {
        // MARK: - 3. DEPTH

        Color.customGreenDark
          .cornerRadius(40)
          .offset(y: 12)

        // MARK: - 2. LIGHT

        Color.customGrayLight
          .cornerRadius(40)
          .offset(y: 3)
          .opacity(0.85)

        // MARK: - 1. SURFACE

        LinearGradient(colors: [
          .customGreenLight,
          .customGreenLight],
                       startPoint: .top,
                       endPoint: .bottom
        )
        .cornerRadius(40)
      }
    }
}

#Preview {
    CustomBackgroundView()
    .padding()
}
