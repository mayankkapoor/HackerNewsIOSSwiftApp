//
//  HackerNewsIOSSwiftApp.swift
//  HackerNewsIOSSwift
//
//  Created by Mayank Kapoor on 15/10/2020.
//

import SwiftUI

@main
struct HackerNewsIOSSwiftApp: App {
    var body: some Scene {
        WindowGroup {
            ItemsListView(viewModel: ItemsViewModel(category: .top))
        }
    }
}

struct HackerNewsIOSSwiftApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
