//
//  ContentView.swift
//  HackerNewsIOSSwift
//
//  Created by Mayank Kapoor on 15/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ItemView(viewModel: ItemViewModel(id: 8863))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
