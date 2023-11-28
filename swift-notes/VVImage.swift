//
//  VVImage.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/27.
//

import SwiftUI

struct VVImage: View {
    var body: some View {
        Image("banner")
            .resizable()
            .scaledToFit()
            .frame(width: 300)
            .clipShape(Circle())
            .opacity(0.8)
            .overlay {
                Text("编辑")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
    }
}

struct VVImage_Previews: PreviewProvider {
    static var previews: some View {
        VVImage()
    }
}
