//
//  FlatSolutionItemViewData.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//

import Foundation

struct FlatSolutionItemViewData: Identifiable {
    let id = UUID()
    let title: String
    var checked: Bool
    let isSection: Bool
}
