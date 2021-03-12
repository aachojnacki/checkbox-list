//
//  FakeStore.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 12/03/2021.
//

import Foundation

struct FakeStore {

    static var fakeCollection: [FakeModel] {
        if Bool.random() {
            return fakeCollection1
        }
        return fakeCollection2
    }

    private static let fakeCollection1: [FakeModel] = [
        FakeModel(title: "Item 1"),
        FakeModel(title: "Item 2"),
        FakeModel(title: "Item 3"),
        FakeModel(title: "Item 4"),
        FakeModel(title: "Item 5"),
        FakeModel(title: "Item 6"),
        FakeModel(title: "Item 7"),
        FakeModel(title: "Item 8")
    ]

    private static let fakeCollection2: [FakeModel] = [
        FakeModel(title: "Section 1", items: [
            FakeModel(title: "Item 1"),
            FakeModel(title: "Item 2"),
            FakeModel(title: "Item 3"),
            FakeModel(title: "Item 4")
        ]),
        FakeModel(title: "Section 2", items: [
            FakeModel(title: "Item 1"),
            FakeModel(title: "Item 2"),
            FakeModel(title: "Item 3"),
            FakeModel(title: "Item 4"),
            FakeModel(title: "Item 5"),
            FakeModel(title: "Item 6"),
            FakeModel(title: "Item 7"),
            FakeModel(title: "Item 8")
        ]),
        FakeModel(title: "Section 3", items: [
            FakeModel(title: "Item 1"),
            FakeModel(title: "Item 2"),
        ]),
        FakeModel(title: "Section 4", items: [
            FakeModel(title: "Item 1"),
            FakeModel(title: "Item 2"),
            FakeModel(title: "Item 3"),
            FakeModel(title: "Item 4"),
            FakeModel(title: "Item 5")
        ])
    ]

}
