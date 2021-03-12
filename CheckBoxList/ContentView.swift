//
//  ContentView.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: MVVMSolutionView(viewModel: MVVMSolutionViewModel()),
                    label: { Text("MVVM Solution") })
                    .padding()
                NavigationLink(
                    destination: FlatSolutionView(viewModel: FlatSolutionViewModel()),
                    label: { Text("Flat Solution") })
                    .padding(.bottom, 40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
