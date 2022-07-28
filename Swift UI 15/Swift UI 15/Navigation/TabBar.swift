//
//  TabBar.swift
//  Swift UI 15
//
//  Created by Karen Stoletniy on 28/7/22.
//

import SwiftUI

struct TabBar: View {
  @AppStorage("selectedTab") var selectedTab: Tab = .home
  @State var color: Color = .blue
  @State var tapItemWidth: CGFloat = 0
  
  var body: some View {
    HStack {
      buttons
    }
    .padding(.horizontal, 8)
    .padding(.top, 14)
    .frame(height: 88, alignment: .top)
    .background(
      .ultraThinMaterial,
      in: RoundedRectangle(cornerRadius: 34, style: .continuous)
    )
    .background(
      background
    )
    .overlay(
      overlay
    )
    .strokeStyle(cornerRadius: 34)
    .frame(maxHeight: .infinity, alignment: .bottom)
    .ignoresSafeArea()
  }
  
  var buttons: some View {
    ForEach(tabItems) { item in
      Button {
        selectedTab = item.tabName
        color = item.color
      } label: {
        VStack(spacing: 0) {
          Image(systemName: item.image)
            .symbolVariant(.fill)
            .font(.body.bold())
            .frame(width: 44, height: 29)
          Text(item.text)
            .font(.caption2)
            .lineLimit(1)
        }
        .frame(maxWidth: .infinity)
      }
      .foregroundStyle(
        selectedTab == item.tabName ? .primary : .secondary
      )
      .blendMode(selectedTab == item.tabName ? .overlay : .normal)
      .overlay(
        GeometryReader { proxy in
          Color.clear.preference(
            key: TabPreferenceKey.self,
            value: proxy.size.width
          )
        }
      )
      .onPreferenceChange(TabPreferenceKey.self) { value in
        tapItemWidth = value
      }
    }
  }
  
  var background: some View {
    HStack {
      if selectedTab == .library { Spacer() }
      if selectedTab == .explore { Spacer() }
      if selectedTab == .notifications {
        Spacer()
        Spacer()
      }
      Circle().fill(color).frame(width: tapItemWidth)
      if selectedTab == .home { Spacer() }
      if selectedTab == .explore {
        Spacer()
        Spacer()
      }
      if selectedTab == .notifications { Spacer() }
    }
      .padding(.horizontal, 8)
  }
  
  var overlay: some View {
    HStack {
      if selectedTab == .library { Spacer() }
      if selectedTab == .explore { Spacer() }
      if selectedTab == .notifications {
        Spacer()
        Spacer()
      }
      Rectangle()
        .fill(color)
        .frame(width: 28, height: 5)
        .cornerRadius(3)
        .frame(width: tapItemWidth)
        .frame(maxHeight: .infinity, alignment: .top)
      if selectedTab == .home { Spacer() }
      if selectedTab == .explore {
        Spacer()
        Spacer()
      }
      if selectedTab == .notifications { Spacer() }
    }
      .padding(.horizontal, 8)
  }
}

struct TabBar_Previews: PreviewProvider {
  static var previews: some View {
    TabBar()
.previewInterfaceOrientation(.portrait)
  }
}
