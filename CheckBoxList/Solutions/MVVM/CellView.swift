//
//  CellView.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//

import SwiftUI

struct CellView: View {
    @ObservedObject var viewModel: CellViewModel

    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            CheckboxView(viewModel: viewModel.checkbox)
            Text(viewModel.title)
                .font(.system(size: 16, weight: viewModel.isSectionCell ? .bold : .regular))
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(viewModel: CellViewModel("Some title"))
            .previewLayout(.sizeThatFits)
    }
}
