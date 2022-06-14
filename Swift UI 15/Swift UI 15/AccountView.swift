//
//  AccountView.swift
//  Swift UI 15
//
//  Created by Karen Stoletniy on 13/6/22.
//

import SwiftUI

struct AccountView: View {
  var body: some View {
    NavigationView {
      List {
        VStack(spacing: 8) {
          Image(systemName: "person.crop.circle.badge.checkmark")
            .symbolVariant(.circle.fill)
            .font(.system(size: 32))
            .symbolRenderingMode(.palette)
            .foregroundStyle(.blue, .blue.opacity(0.3))
            .padding()
            .background(Circle().fill(.ultraThinMaterial))
            .background(
              Image(systemName: "hexagon")
                .symbolVariant(.fill)
                .font(.system(size: 200))
                .foregroundColor(.blue)
                .offset(x: -50, y: -100)
          )
          Text("Karen").font(.title.weight(.semibold))
          HStack {
            Image(systemName: "location")
            Text("Uruguay").foregroundColor(.secondary)
          }
        }
        .frame(maxWidth: .infinity)
        .padding()
        Section {
          Label("Settings", systemImage: "gear")
            .imageScale(.small)
          Label("Billing", systemImage: "creditcard")
          Label("Help", systemImage: "questionmark")
        }
        .listRowSeparator(.hidden)
      }
      .listStyle(.insetGrouped)
      .navigationTitle("Accounts")
    }
  }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
