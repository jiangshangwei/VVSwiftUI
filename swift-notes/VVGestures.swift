//
//  Gestures.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/28.
//

import SwiftUI

struct VVGestures: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200,height: 200)
                .foregroundColor(.red)
            Image(systemName: "heart.fill")
                .foregroundColor(.white)
                .font(.system(size: 80))
        }.onTapGesture {
            print("xx")
        }
    }
}

struct Gestures_Previews: PreviewProvider {
    static var previews: some View {
        VVGestures()
    }
}
