//
//  FakeInteractor.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 05/03/2021.
//

import Combine
import Foundation

class FakeInteractor: FakeInteracting {

    func getResponse() -> AnyPublisher<[FakeModel], Never> {
        return Just(FakeStore.fakeCollection)
            .eraseToAnyPublisher()
    }

}
