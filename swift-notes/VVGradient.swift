//
//  VVGradient.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/27.
//

import SwiftUI

//Padding（内边距）
//Padding可以在视图的周围添加空白间距，以改变视图的边缘和内容之间的距离

struct VVGradient: View {
    var body: some View {
        Button {
          print("click")
        } label: {
            Text("微信登录")
                .frame(minWidth: 0,maxWidth:.infinity,minHeight:50)
                .background(LinearGradient(colors: [.red,.gray], startPoint: .leading, endPoint: .trailing))
        }
        .padding()

    }
}

struct VVGradient_Previews: PreviewProvider {
    static var previews: some View {
        VVGradient()
    }
}
