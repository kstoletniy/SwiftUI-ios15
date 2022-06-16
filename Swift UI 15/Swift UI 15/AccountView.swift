//
//  AccountView.swift
//  Swift UI 15
//
//  Created by Karen Stoletniy on 13/6/22.
//

import SwiftUI

struct AccountView: View {
  
  @State var isDeleted = false
  @State var isPinned = false
  
  var body: some View {
    NavigationView {
      List {
        profile
        menu
        links
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Accounts")
    }
  }
  
  var profile: some View {
    VStack(spacing: 8) {
      Image(systemName: "person.crop.circle.badge.checkmark")
        .symbolVariant(.circle.fill)
        .font(.system(size: 32))
        .symbolRenderingMode(.palette)
        .foregroundStyle(.blue, .blue.opacity(0.3))
        .padding()
        .background(Circle().fill(.ultraThinMaterial))
        .background(
          HexagonView().offset(x: -50, y: -100)
      )
      Text("Karen").font(.title.weight(.semibold))
      HStack {
        Image(systemName: "location")
        Text("Uruguay").foregroundColor(.secondary)
      }
    }
    .frame(maxWidth: .infinity)
    .padding()
  }
  
  var menu: some View {
    Section {
      NavigationLink(destination: ContentView()) {
        Label("Settings", systemImage: "gear")
      }
      NavigationLink { Text("Billing") } label: {
        Label("Billing", systemImage: "creditcard")
      }
      NavigationLink { ContentView() } label: {
        Label("Help", systemImage: "questionmark")
      }
    }
    .listRowSeparator(.hidden)
    .accentColor(.primary)
  }
  
  var links: some View {
    Section {
      if !isDeleted {
        Link(destination: URL(string: "https://apple.com")!) {
          HStack {
            Label("Website", systemImage: "house")
            Spacer()
            Image(systemName: "link").foregroundColor(.secondary)
          }
        }
        .swipeActions(edge: .leading, allowsFullSwipe: false){
          Button( action: { isDeleted = true }) {
            Label("Delete", systemImage: "trash")
          }
          .tint(.red)
          pinButton
        }
      }
      Link(destination: URL(string: "https://youtube.com")!) {
        HStack {
          Label("Youtube", systemImage: "tv")
          Spacer()
          Image(systemName: "link").foregroundColor(.secondary)
        }
      }
    }
    .accentColor(.primary)
    .listRowSeparator(.hidden)
  }
  
  var pinButton: some View {
    Button { isPinned.toggle() } label: {
      if isPinned {
        Label("Unpin", systemImage: "pin.slash")
      } else {
        Label("Pin", systemImage: "pin")
      }
      
    }
    .tint(isPinned ? .gray : .yellow)
  }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
