//
//  ContentView.swift
//  Swift UI 15
//
//  Created by Karen Stoletniy on 13/6/22.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("selectedTab") var selectedTab: Tab = .home
  var body: some View {
    ZStack(alignment: .bottom) {
      Group {
        switch selectedTab {
        case .home:
          HomeView()
        case .explore:
          AccountView()
        case .notifications:
          AccountView()
        case .library:
          AccountView()
        }
      }
      .frame(maxWidth: .infinity, maxHeight: .infinity)
      TabBar()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
