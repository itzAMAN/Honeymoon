//
//  InfoView.swift
//  Honeymoon
//
//  Created by AMAN SHARMA on 21/05/22.
//

import SwiftUI

struct InfoView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  
  // MARK: - BODY
    var body: some View {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .center, spacing: 20) {
          HeaderComponent()
            
          Spacer(minLength: 10)
          
          Text("App Info")
            .fontWeight(.black)
            .modifier(TitleModifier())
          
          AppInfoView()
          
          Text("Credits")
            .fontWeight(.black)
            .modifier(TitleModifier())
          
          CreditsView()
          
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
      }
    }
}

  // MARK: - PREVIEW
struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct AppInfoView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      RowAppInfo(itemOne: "Application", itemTwo: "Honeymoon")
      RowAppInfo(itemOne: "Compatibility", itemTwo: "iPhone and iPad")
      RowAppInfo(itemOne: "Developer", itemTwo: "Dork / Dorky")
      RowAppInfo(itemOne: "Designer", itemTwo: "Aman Sharma")
      RowAppInfo(itemOne: "Website", itemTwo: "github.com/itzAMAN")
      RowAppInfo(itemOne: "Version", itemTwo: "1.0.0")
    } //: VSTACK
  }
}

struct RowAppInfo: View {
  // MARK: - PROPERTIES
  
  var itemOne: String
  var itemTwo: String
  
  var body: some View {
    VStack {
      HStack {
        Text(itemOne).foregroundColor(Color.gray)
        Spacer()
        Text(itemTwo)
      }
      Divider()
    }
  }
}

struct CreditsView: View {
  var body: some View {
    VStack (alignment: .leading, spacing: 10) {
      HStack {
        Text("Photos").foregroundColor(Color.gray)
        Spacer()
        Text("Unsplash")
      }
      
      Divider()
      
      Text("Photographers").foregroundColor(Color.gray)
      
      Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David K??hler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)")
        .multilineTextAlignment(.leading)
        .font(.footnote)
    }
  }
}
