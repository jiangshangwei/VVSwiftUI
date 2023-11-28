//
//  VVPath.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/28.
//

import SwiftUI

struct VVPath: View {
    var body: some View {
        //绘制半圆弧
        Path { path in
            path.move(to: CGPoint(x: 200, y: 200))
            path.addArc(center: CGPoint(x: 200, y: 200), radius: 100, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: true)
        }
        .fill(Color.green)
    }
}

struct VVPath_Previews: PreviewProvider {
    static var previews: some View {
        VVPath()
    }
}
