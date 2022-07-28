//
//  Tab.swift
//  Swift UI 15
//
//  Created by Karen Stoletniy on 28/7/22.
//

import SwiftUI

struct TabItem: Identifiable {
  var id = UUID()
  var text: String
  var image: String
  var tabName: Tab
  var color: Color
}

var tabItems = [
  TabItem(text: "Learn Now", image: "house", tabName: .home, color: .blue),
  TabItem(text: "Explore", image: "magnifyingglass", tabName: .explore, color: .pink),
  TabItem(text: "Notifications", image: "bell", tabName: .notifications, color: .black),
  TabItem(text: "Library", image: "rectangle.stack", tabName: .library, color: .green)
]

enum Tab: String {
  case home
  case explore
  case notifications
  case library
}

struct TabPreferenceKey: PreferenceKey {
  static var defaultValue: CGFloat = 0
  static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
    value = nextValue()
  }
}
