//
//  ItemsListView.swift
//  HackerNewsIOSSwift
//
//  Created by Mayank Kapoor on 15/10/2020.
//

import SwiftUI

struct ItemsListView: View {
  @ObservedObject var viewModel: ItemsViewModel

  @ViewBuilder
  var body: some View {
    if viewModel.loading {
      ProgressView()
        .onAppear(perform: { viewModel.reload() })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    } else if let error = viewModel.error {
      Label(error.description, systemImage: "exclamationmark.triangle")
    } else {
      List(viewModel.items) { item in
        ItemView(viewModel: ItemViewModel(id: item.id))
      }
    }
  }
}
