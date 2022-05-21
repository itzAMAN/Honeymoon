//
//  GuideView.swift
//  Honeymoon
//
//  Created by AMAN SHARMA on 21/05/22.
//

import SwiftUI

struct GuideView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  
  // MARK: - BODY
    var body: some View {
      ScrollView {
        VStack(alignment: .center, spacing: 20) {
          HeaderComponent()
          
          Spacer(minLength: 10)
          
          Text("Get started!")
            .fontWeight(.black)
            .modifier(TitleModifier())
          Text("Discover and pick the perfect destination for your romantic Honeymoon!")
            .lineLimit(nil)
            .multilineTextAlignment(.center)
          
          Spacer(minLength: 10)
          
          VStack(alignment: .leading, spacing: 25) {
            GuideComponent(
              title: "Like",
              subTitle: "Swipe right",
              description: "Do you like this destination? Touch the screen and swipe right.It will be saved to the favourites",
              icon: "heart.circle"
            )
            
            GuideComponent(
              title: "Dismiss",
              subTitle: "Swipe left",
              description: "Would you like to skip this place? Touch the screen and swipe left. You will no longer see it",
              icon: "xmark.circle"
            )
            
            GuideComponent(
              title: "Book",
              subTitle: "Tap the button",
              description: "Our selection of honeymoon resorts is perfect setting for you to embark your new life together.",
              icon: "checkmark.square"
            )
          }
          
          Spacer(minLength: 10)
          
          Button {
            self.presentationMode.wrappedValue.dismiss()
          } label: {
            Text("Continue".uppercased())
              .modifier(ButtonModifier())
          }

        } //: VSTACK
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding(.top, 15)
        .padding(.bottom, 25)
        .padding(.horizontal, 25)
      } //: SCROLL
    }
}

  // MARK: - PREVIEW
struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
