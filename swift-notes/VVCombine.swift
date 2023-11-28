//
//  VVCombine.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/28.
//

import SwiftUI
import Combine

struct VVCombine: View {
 
    @ObservedObject private var viewModel:ViewModel = ViewModel()
    
    var body: some View {
        VStack(spacing: 40){
            VStack {
                RegisterView(isTextField: true, fieldName: "用户名", fieldValue: $viewModel.username)
                if(!viewModel.isUsernameLengthValid){
                    InputErrorView(iconName: "exclamationmark.circle.fill", text: "用户不存在")
                }
            }
            VStack {
                RegisterView(isTextField: false, fieldName: "密码", fieldValue: $viewModel.password)
                if(!viewModel.isPasswordLengthValid){
                    InputErrorView(iconName: "exclamationmark.circle.fill", text: "密码不正确")
                }
            }
            VStack {
                RegisterView(isTextField: false, fieldName: "再次输入密码", fieldValue: $viewModel.passwordConfirm)
                if(!viewModel.isPasswordConfirmValid){
                    InputErrorView(iconName: "exclamationmark.circle.fill", text: "两次密码需要相同")
                }
            }
            
            Button {
                
            } label: {
                Text("注册")
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.white)
                    .bold()
                    .padding()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255))
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }.padding()
    }
}

struct RegisterView:View {
    var isTextField = false
    var fieldName = ""
    @Binding var fieldValue: String
    var body: some View{
        VStack {
            if isTextField{
                TextField(fieldName, text: $fieldValue)
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.horizontal)
            }else{
                SecureField(fieldName, text: $fieldValue)
                    .font(.system(size: 20, weight: .semibold))
                    .padding(.horizontal)
            }
            //分割线
            Divider()
                .frame(height: 1)
                .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                .padding(.horizontal)
        }
    }
}

//错误信息
struct InputErrorView:View {
    var iconName = ""
    var text = ""
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
            Text(text)
                .font(.system(.body, design: .rounded))
                .foregroundColor(Color(red: 251/255, green: 128/255, blue: 128/255))
            Spacer()
         }.padding(.leading,10)
    }
}


struct VVCombine_Previews: PreviewProvider {
    static var previews: some View {
        VVCombine()
    }
}
