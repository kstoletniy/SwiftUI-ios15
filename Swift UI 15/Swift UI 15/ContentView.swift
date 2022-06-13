//
//  ContentView.swift
//  Swift UI 15
//
//  Created by Karen Stoletniy on 13/6/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 8.0) {
      Spacer()
      Image("Logo 2")
        .resizable(resizingMode: .stretch)
        .aspectRatio(contentMode: .fit)
        .frame(width: 26.0, height: 26.0)
        .cornerRadius(/*@START_MENU_TOKEN@*/26.0/*@END_MENU_TOKEN@*/)
      VStack(alignment: .leading) {
        VStack(alignment: .leading, spacing: 8.0) {
          Text("Swift UI")
            .font(.largeTitle)
            .fontWeight(.bold)
          Text("20 sections - 3 hours")
            .font(.footnote)
            .fontWeight(.semibold)
        }
        Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
          .font(.footnote)
          .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
          .lineLimit(2)
      }
    }
    .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
    .frame(height: 350.0)
    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Background")/*@END_MENU_TOKEN@*/)
    .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
