//
//  CheckboxViewModel.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//


import Combine
import Foundation

class CheckboxViewModel: ObservableObject {

    enum State {
        /// checkbox (and their children) checked
        case checked

        /// checkbox (and their children) unchecked
        case unchecked

        /// checkbox unchecked, but some of their children are checked -
        /// in UI this state is often represented by  "-" or looks exactly the same as unchecked,
        /// depending on the design
        case checkedPartially
    }

    // MARK: - Internal properties
    var cancellableBag = Set<AnyCancellable>()

    @Published var state: State = .unchecked

    var childCheckboxes: [CheckboxViewModel] = [] {
        didSet {
            childCheckboxes.forEach { checkBox in
                // behavior relation between checkbox and their children
                self.$state.removeDuplicates()
                    .filter { $0 != .checkedPartially }
                    .assign(to: &checkBox.$state)

                // behavior relation between children and their parent
                childCheckboxes
                    .map{ $0.$state }
                    .combineLatest()
                    .map {
                        if $0.allSatisfy({ $0 == .checked }) {
                            return .checked
                        } else if $0.allSatisfy({ $0 == .unchecked }) {
                            return .unchecked
                        } else {
                            return .checkedPartially
                        }
                    }
                    .assign(to: &self.$state)
            }
        }
    }

    func toggle() {
        if state == .checked {
            state = .unchecked
        } else {
            state = .checked
        }
    }
}
