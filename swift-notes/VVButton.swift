//
//  VVButton.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/27.
//

import SwiftUI

struct VVButton: View {
    var body: some View {
        ImageButton()
    }
}

struct VVButton_Previews: PreviewProvider {
    static var previews: some View {
        VVButton()
    }
}

struct TextButton:View {
    var body: some View{
        Button {
            print("login success")
        } label: {
            Text("微信登录")
                .font(.system(size: 14))
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color(red: 88 / 255, green: 224 / 255, blue: 133 / 255))
                .cornerRadius(5)
                .padding(.horizontal, 20)
        }
    }
}


struct ImageButton:View {
    var body: some View{
        Button {
            print("login success")
        } label: {
            Image("banner")
                .resizable()
                .frame(width: 30,height: 30)
                .clipShape(Circle())
        }
    }
}

