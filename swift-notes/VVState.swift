//
//  VVState.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/27.
//

import SwiftUI

struct VVState: View {
    
    @State var isSelected = false
    
    var body: some View {
        VStack {
            Button {
                isSelected.toggle()
            } label: {
                Image(systemName: isSelected ? "checkmark.circle.fill" : "circle")
                    .font(.system(size:150))
                    .foregroundColor(isSelected ? Color(red: 112/255, green: 182/255, blue: 3/255) : Color(red: 170/255, green: 170/255, blue: 170/255) )
            }
            
            TitleView(isSelected: $isSelected)
        }
    }
}

struct VVState_Previews: PreviewProvider {
    static var previews: some View {
        VVState()
    }
}

struct TitleView: View {
    
    //Binding共享了State定义的状态
    @Binding var isSelected:Bool
    
    var body: some View {
        Text(isSelected ? "已开启":"未开启")
    }
}
