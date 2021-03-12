//
//  MVVMSolutionViewModel.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//

import Combine
import Foundation

class MVVMSolutionViewModel: ObservableObject {
    @Published var cells: [CellViewModel] {
        didSet {
            configureSelectAll()
        }
    }
    @Published var sendEnabled = false
    @Published var alertIsPresented = false
    @Published var alertText = ""

    let selectAll = CellViewModel("Select all", isSectionCell: true)
    var cancellableBag = Set<AnyCancellable>()

    // MARK: - Internal methods
    init(cells: [CellViewModel] = []) {
        self.cells = cells
        configureSelectAll()
    }

    func sendPressed() {
        
    }

    private func configureSelectAll() {
        if cells.isEmpty || cells[0] != selectAll {
            self.selectAll.checkbox.childCheckboxes = cells.map { $0.checkbox }
            cells = [self.selectAll] + cells
        }
    }
}

/*---- cool stuff - you can add previews to view models! ----*/

import SwiftUI
struct MVVMSolutionViewModel_Previews: PreviewProvider {
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

