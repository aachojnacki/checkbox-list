//
//  FlatSolutionViewModel.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//

import Combine
import Foundation

class FlatSolutionViewModel: ObservableObject {
    let selectAll = FlatSolutionItemViewData(title: "Select All", checked: false, isSection: true)

    @Published var sendEnabled = false
    @Published var alertIsPresented = false
    @Published var alertText = ""

    @Published var items: [FlatSolutionItemViewData] {
        didSet {
            if items.isEmpty || items[0].id != selectAll.id {
                items = [selectAll] + items
            }
        }
    }

    init(items: [FlatSolutionItemViewData] = []) {
        self.items = [selectAll] + items
    }

    func cellTapped(_ item: FlatSolutionItemViewData) {
        guard let index = items.firstIndex(where: { $0.id == item.id }) else { return }
        items[index].checked.toggle()
        if index == 0 {
            items[1..<items.count].indices.forEach { index in
                items[index].checked = items[0].checked
            }
        }
        if items.count > 1 {
            items[0].checked = items[1..<items.count].allSatisfy { $0.checked }
        }
    }

    func sendPressed() {

    }
}
