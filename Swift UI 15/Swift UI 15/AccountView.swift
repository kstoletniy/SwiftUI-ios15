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
        Section {
          Text("Settings")
          Text("Billing")
          Text("Help")
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
