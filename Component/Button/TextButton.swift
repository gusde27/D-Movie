//
//  TextButton.swift
//  D-Movie
//
//  Created by I Gede Bagus Wirawan on 14/12/22.
//

import SwiftUI

struct TextButton: View {
    @State var buttonTitle: String = "Button Text"
    @State var buttonTextColor: Color = Color.blue
    
    var onClick: () -> Void = {}
    
    var body: some View {
        Button(action: {
            self.onClick()
        }, label: {
            Text(buttonTitle)
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(buttonTextColor)
        })
    }
}

struct TextButton_Previews: PreviewProvider {
    static var previews: some View {
        TextButton()
    }
}
