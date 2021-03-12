//
//  FakeModel.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 12/03/2021.
//

import Foundation

struct FakeModel {
    let title: String
    let items: [FakeModel]

    init(title: String, items: [FakeModel] = []) {
        self.title = title
        self.items = items
    }
}
