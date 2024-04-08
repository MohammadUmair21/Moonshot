//
//  ViewDivider.swift
//  Moonshot
//
//  Created by Umair on 08/04/24.
//

import SwiftUI

struct ViewDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct ViewDivider_Previews: PreviewProvider {
    static var previews: some View {
        ViewDivider()
    }
}
