//
//  ContentView.swift
//  swiftui-task1
//
//  Created by MacBook on 01.10.2023.
//

import SwiftUI

struct ContentView: View {

    private let accentColor = Color.indigo
    private let bottomViewHeight: CGFloat = 50
    private let scrollViewContentHeight: CGFloat = 1000

    var body: some View {
        TabView {
            ScrollView {
                Rectangle()
                    .fill(.black)
                    .opacity(0.5)
                    .frame(height: scrollViewContentHeight)
            }
            .safeAreaInset(edge: .bottom, spacing: 0) {
                Rectangle()
                    .fill(accentColor)
                    .opacity(0.5)
                    .frame(height: bottomViewHeight)
            }
            .tabItem {
                Label("First", systemImage: "star")
            }
        }
        .tint(accentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
