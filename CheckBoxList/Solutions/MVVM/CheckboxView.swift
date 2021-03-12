//
//  CheckboxView.swift
//  CheckBoxList
//
//  Created by Adrian Chojnacki on 13/03/2021.
//

import SwiftUI

struct CheckboxView: View {
    @ObservedObject var viewModel: CheckboxViewModel

    var body: some View {
        Rectangle()
            .fill(viewModel.state == .checked ? Color.black : Color.white)
            .border(Color.black)
            .frame(width: 20, height: 20, alignment: .center)
            .onTapGesture {
                viewModel.toggle()
            }
    }
}

struct CheckboxView_Previews: PreviewProvider {
    static var previews: some View {
        CheckboxView(viewModel: CheckboxViewModel())
            .previewLayout(.sizeThatFits)
    }
}
