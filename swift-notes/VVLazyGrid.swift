//
//  VVLazyVGrid.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/28.
//

import SwiftUI

struct VVLazyGrid: View {
    private var appleSymbols = ["house.circle", "person.circle", "bag.circle", "location.circle", "bookmark.circle", "gift.circle", "globe.asia.australia.fill", "lock.circle", "pencil.circle", "link.circle"]
    
    //如果固定了frame 则按固定的frame 否则会平均分配
//    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.adaptive(minimum: 50))]
    

    var body: some View {
//        ScrollView {
            //spacing是纵向间距
            LazyVGrid(columns: gridItemLayout,spacing: 10) {
                ForEach(0 ... 99, id: \.self) {
                    Image(systemName: appleSymbols[$0 % appleSymbols.count])
                        .font(.system(size: 30))
//                        .frame(width: 80, height: 80)
                        .frame(minWidth: 0,maxWidth: .infinity, minHeight:80)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                }
            }
//        }
    }
}

struct VVLazyVGrid_Previews: PreviewProvider {
    static var previews: some View {
        VVLazyGrid()
    }
}
