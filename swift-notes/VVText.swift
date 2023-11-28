//
//  VVText.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/27.
//

import SwiftUI

struct VVText: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .fontWeight(.bold)
//            .font(.title)
            .font(.system(size: 30))
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .background(Color.red)
            .shadow(color: .black, radius: 10)
            .frame(width: 100)
            .padding()
    }
}

struct VVText_Previews: PreviewProvider {
    static var previews: some View {
        VVText()
    }
}
