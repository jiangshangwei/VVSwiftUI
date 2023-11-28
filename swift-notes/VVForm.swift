//
//  VVForm.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/28.
//

import SwiftUI

struct VVForm: View {
    @State var isDownload = false //是否下载
    @State var isInstall = false //是否安装
    private var displayState = [ "接收关闭", "仅限联系人", "所有人"]
    @State private var selectedNumber = 0
    var body: some View {
        Form {
            Section( footer: Text("下载后在夜间自动安装软件更新。更新安装前您会收到通知。iPhone 必须为充电状态并接入 Wi-Fi以完成更新。"), content: {
                Toggle(isOn: $isDownload) {
                    Text("下载iOS更新")
                }
                Toggle(isOn: $isInstall) {
                    Text("安装iOS更新")
                }
            })
            Section {
                Picker(selection: $selectedNumber) {
                    ForEach(0 ..< displayState.count, id: \.self) {
                        Text(displayState[$0])
                    }
                } label: {
                    Text("隔空推送")
                }
            }
            Section {
                ForEach(0 ..< 10) { _ in
                    Text("内容填充")
                }
            }
        }.navigationTitle(Text("通用"))
        
    }
}

struct VVForm_Previews: PreviewProvider {
    static var previews: some View {
        VVForm()
    }
}
