//
//  ContentView.swift
//  FinBud
//
//  Created by Kranti on 2024/6/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
            // Background
            Color(.white).ignoresSafeArea()

            VStack {
                // MARK: Main Title
                Text("FinBud").font(.system(size: 24, weight: .medium)).foregroundStyle(Color(.systemGray))

                Spacer()

                // MARK: Core


            }.padding([.top, .bottom], 25)
        }

    }
}

#Preview {
    ContentView()
}
