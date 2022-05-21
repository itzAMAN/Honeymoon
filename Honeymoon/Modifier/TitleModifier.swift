//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by AMAN SHARMA on 21/05/22.
//

import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(Color.pink)
  }
}
