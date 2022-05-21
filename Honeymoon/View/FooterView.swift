//
//  FooterView.swift
//  Honeymoon
//
//  Created by AMAN SHARMA on 21/05/22.
//

import SwiftUI

struct FooterView: View {
  // MARK: - PROPERTIES
  
  @Binding var showBookingAlert: Bool
  
  // MARK: - BODY
    var body: some View {
      HStack {
        Image(systemName: "xmark.circle")
          .font(.system(size: 42, weight: .light))
        
        Spacer()
        
        Button {
          self.showBookingAlert.toggle()
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
  
  @State static var showAlert: Bool = false
    static var previews: some View {
      FooterView(showBookingAlert: $showAlert)
        .previewLayout(.fixed(width: 375, height: 80))
    }
}
