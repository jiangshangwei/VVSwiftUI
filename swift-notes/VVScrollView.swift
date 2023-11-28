//
//  VVScrollView.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/27.
//

import SwiftUI

struct VVScrollView: View {
    var body: some View {
        ScrollView {
            VStack {
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
                CardView()
            }
        }
    }
}

struct VVScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VVScrollView()
    }
}

struct CardView: View {
    var body: some View{
        VStack {
            Image("banner")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("你的能力是否能在全世界通用，如果不能，那么需求重新评估你的能力。")
                .font(.system(size: 17))
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding()
        }.overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1),lineWidth: 1)}
        .padding([.top,.horizontal])
    }
}
