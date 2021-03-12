//
//  CellViewModel.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//

import Foundation

class CellViewModel: Identifiable, Equatable, ObservableObject {
    let id = UUID()
    let isSectionCell: Bool
    let checkbox = CheckboxViewModel()

    @Published var title: String

    init(_ title: String, isSectionCell: Bool = false) {
        self.title = title
        self.isSectionCell = isSectionCell
    }

    static func == (lhs: CellViewModel, rhs: CellViewModel) -> Bool {
        lhs.id == rhs.id
    }
}
