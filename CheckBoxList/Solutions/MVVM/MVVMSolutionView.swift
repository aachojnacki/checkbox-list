//
//  MVVMSolutionView.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//

import SwiftUI
import Foundation

struct MVVMSolutionView: View {
    @ObservedObject var viewModel: MVVMSolutionViewModel
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.cells) { cellViewModel in
                    CellView(viewModel: cellViewModel)
                }
            }
            Button(viewModel.sendEnabled ? "send" : "not valid", action: viewModel.sendPressed)
            .padding()
            .disabled(!viewModel.sendEnabled)
        }.alert(isPresented: $viewModel.alertIsPresented, content: {
            Alert(title: Text("Items sent:"), message: Text(viewModel.alertText))
        })
    }
}

struct MVVMSolutionView_Previews: PreviewProvider {
    static let previewViewModel: MVVMSolutionViewModel = {
        let viewModel = MVVMSolutionViewModel()
        viewModel.cells = [
            CellViewModel("Item 1"),
            CellViewModel("Item 2"),
            CellViewModel("Item 3"),
            CellViewModel("Item 4"),
            CellViewModel("Item 5"),
        ]
        return viewModel
    }()

    static var previews: some View {
        MVVMSolutionView(viewModel: previewViewModel)
    }
}
