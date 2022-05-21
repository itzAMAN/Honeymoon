//
//  FooterView.swift
//  Honeymoon
//
//  Created by AMAN SHARMA on 21/05/22.
//

import SwiftUI

struct FooterView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
    var body: some View {
      HStack {
        Image(systemName: "xmark.circle")
          .font(.system(size: 42, weight: .light))
        
        Spacer()
        
        Button {
          print("Successs")
        } label: {
          Text("Book Destination".uppercased())
            .font(.system(.subheadline, design: .rounded))
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .accentColor(Color.pink)
            .background(
              Capsule().stroke(Color.pink, lineWidth: 2)
            )
        }

        
        Spacer()
        
        Image(systemName: "heart.circle")
          .font(.system(size: 42, weight: .light))

      } //: HSTACK
      .padding()
    }
}

  // MARK: - PREVIEW
struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
        .previewLayout(.fixed(width: 375, height: 80))
    }
}
