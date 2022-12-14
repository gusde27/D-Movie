//
//  RectangleButton.swift
//  D-Movie
//
//  Created by I Gede Bagus Wirawan on 14/12/22.
//

import SwiftUI

struct RectangleButton: View {
    @State var buttonTitle: String = "Button"
    @State var buttonBackgroundColor: Color = Color.blue
    @State var buttonTextColor: Color = Color.white
    
    var onClick: () -> Void = {}

    
    var body: some View {
        Button(action: {
            self.onClick()
        }, label: {
            Text(buttonTitle.uppercased())
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(buttonTextColor)
                .padding(10)
                .background(buttonBackgroundColor)
                .cornerRadius(10)
        })
    }
}

struct RectangleButton_Previews: PreviewProvider {
    static var previews: some View {
        RectangleButton()
    }
}
