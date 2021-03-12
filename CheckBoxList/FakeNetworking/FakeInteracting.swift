//
//  FakeInteracting.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 12/03/2021.
//

import Combine
import Foundation

protocol FakeInteracting {
    func getResponse() -> AnyPublisher<[FakeModel], Never>
}
