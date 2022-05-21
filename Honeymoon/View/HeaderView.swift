//
//  HeaderView.swift
//  Honeymoon
//
//  Created by AMAN SHARMA on 21/05/22.
//

import SwiftUI

struct HeaderView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
    var body: some View {
      HStack {
        Button {
          // ACTION
          print("Info")
        } label: {
          Image(systemName: "info.circle")
            .font(.system(size: 24, weight: .regular))
        }
        .accentColor(Color.primary)
        
               Spacer()
        
        Image("logo-honeymoon-pink")
          .resizable()
          .scaledToFit()
          .frame(height: 28)
        
               Spacer()
        
        Button {
          // ACTION
          print("Guide")
        } label: {
          Image(systemName: "questionmark.circle")
            .font(.system(size: 24, weight: .regular))
        }
        .accentColor(Color.primary)

      } //: HSTACK
      .padding()
    }
}

  // MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
        .previewLayout(.fixed(width: 375, height: 80))
    }
}
