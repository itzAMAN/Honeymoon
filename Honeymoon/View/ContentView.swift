//
//  ContentView.swift
//  Honeymoon
//
//  Created by AMAN SHARMA on 21/05/22.
//

import SwiftUI

struct ContentView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
    var body: some View {
      VStack {
        HeaderView()
        
        Spacer()
        
        CardView(honeymoon: honeymoonData[2])
        // FIXME
          .padding()
        
        Spacer()
        
        FooterView()
      } //: VSTACK
    }
}
  // MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
