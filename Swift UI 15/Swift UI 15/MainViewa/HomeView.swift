//
//  HomeView.swift
//  Swift UI 15
//
//  Created by Karen Stoletniy on 28/7/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
      VStack(alignment: .leading, spacing: 8.0) {
        Spacer()
        Image("Logo 2")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .frame(width: 26.0, height: 26.0)
          .cornerRadius(10.0)
          .padding(9)
          .background(
            .ultraThinMaterial,
            in: RoundedRectangle(cornerRadius: 16, style: .continuous)
          )
          .strokeStyle(cornerRadius: 16)
        Text("Swift UI")
          .font(.largeTitle)
          .fontWeight(.bold)
          .foregroundStyle(.linearGradient(
            colors: [.primary, .primary.opacity(0.5)],
            startPoint: .topLeading,
            endPoint: .bottomTrailing))
        Text("20 sections - 3 hours".uppercased())
          .font(.footnote)
          .fontWeight(.semibold)
          .foregroundStyle(.secondary)
        Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
          .font(.footnote)
          .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
          .lineLimit(2)
          .frame(maxWidth: .infinity, alignment: .leading)
          .foregroundColor(.secondary)
      }
      .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
      .padding(.vertical, 20.0)
      .frame(height: 350.0)
      .background(
        .ultraThinMaterial,
        in: RoundedRectangle(cornerRadius: 30, style: .continuous)
      )
      .shadow(
        color: Color("Shadow").opacity(0.3),
        radius: 10,
        x: 0,
        y: 10
      )
      .strokeStyle()
      .padding(.horizontal, 20.0)
      .background(Image("Blob 1").offset(x: 250, y: -100))
      .overlay(
        Image("Illustration 5")
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(height: 230.0)
          .offset(x: 31, y: -80)
      )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
