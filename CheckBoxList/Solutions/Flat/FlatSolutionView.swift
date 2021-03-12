//
//  FlatSolution.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 03/03/2021.
//

import SwiftUI

struct FlatSolutionView: View {
    @ObservedObject var viewModel: FlatSolutionViewModel

    var body: some View {
        List {
            ForEach(viewModel.items) { item in
                HStack(spacing: 10) {
                    Rectangle()
                        .fill(item.checked ? Color.black : Color.white)
                        .frame(width: 20, height: 20, alignment: .center)
                        .border(Color.black)
                        .onTapGesture {
                            viewModel.cellTapped(item)
                        }
                    Text(item.title)
                        .font(.system(size: 16, weight: item.isSection ? .bold : .regular, design: .default))
                }
            }
        }
        .alert(isPresented: $viewModel.alertIsPresented, content: {
            Alert(title: Text("Items sent:"), message: Text(viewModel.alertText))
        })
        Button(viewModel.sendEnabled ? "send" : "not valid", action: viewModel.sendPressed)
        .padding()
        .disabled(!viewModel.sendEnabled)
    }
}

struct FlatSolutionView_Previews: PreviewProvider {

    static let previewViewModel: FlatSolutionViewModel = {
        let viewModel = FlatSolutionViewModel()
        viewModel.items = [
            FlatSolutionItemViewData(title: "Item 1", checked: false, isSection: false),
            FlatSolutionItemViewData(title: "Item 2", checked: false, isSection: false),
            FlatSolutionItemViewData(title: "Item 3", checked: false, isSection: false),
            FlatSolutionItemViewData(title: "Item 4", checked: false, isSection: false),
            FlatSolutionItemViewData(title: "Item 5", checked: false, isSection: false)
        ]
        return viewModel
    }()

    static var previews: some View {
        FlatSolutionView(viewModel: previewViewModel)
    }
}
