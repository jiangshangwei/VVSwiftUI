//
//  VVStackView.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/27.
//

import SwiftUI

struct VVStackView: View {
    var body: some View {
        VStack {
            TopView()
            HStack {
                ZStack {
                    PriceView(title: "连续包月", price: "¥18").overlay {
                        RoundedRectangle(cornerRadius: 6).stroke(Color(red: 202 / 255, green: 169 / 255, blue: 106 / 255),lineWidth:2)
                    }
                    SpecialOfferView()
                }
                PriceView(title: "一个月", price: "¥30")
                PriceView(title: "12个月", price: "¥44")
            }
            .padding(.horizontal)
        }
    }
}

struct VVStackView_Previews: PreviewProvider {
    static var previews: some View {
        VVStackView()
    }
}

struct TopView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("会员套餐")
                    .fontWeight(.bold)
                    .font(.system(.title))
                Text("解锁高级功能")
                    .fontWeight(.bold)
                    .font(.system(.title))
            }
            Spacer()
        }.padding(20)
    }
}

struct PriceView: View {
    
    var title:String
    var price:String
    
    var body: some View {
        VStack {
            Text(title)
                .fontWeight(.bold)
                .font(.system(size: 17))
                .foregroundColor(.gray)
            Text(price)
                .fontWeight(.bold)
                .font(.system(size: 18))
                .foregroundColor(.red)
        }
        .padding(20)
        .background(Color(red: 244 / 255, green: 244 / 255, blue: 245 / 255))
        .cornerRadius(10)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 90)
    }
}

struct SpecialOfferView: View {
    var body: some View {
        Text("首月优惠")
            .background(.white)
            .cornerRadius(4)
            .offset(y:-45)
    }
}
