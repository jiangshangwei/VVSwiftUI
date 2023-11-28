//
//  ContentView.swift
//  swift-notes
//
//  Created by jsw_cool on 2023/11/27.
//

import SwiftUI

struct IndexContent:Identifiable {
    var id = UUID()
    var name: String
}

var _contentsArr = [
    IndexContent(name: "Text"),
    IndexContent(name: "Image"),
    IndexContent(name: "StackView"),
    IndexContent(name: "ScrollView"),
    IndexContent(name: "Button"),
    IndexContent(name: "Gradient"),
    IndexContent(name: "State&Binding"),
    IndexContent(name: "Path"),
    IndexContent(name: "Gesture"),
    IndexContent(name: "Form"),
    IndexContent(name: "LazyGrid"),
    IndexContent(name: "Combine"),
]

struct ContentView: View {
    @State var _contents = _contentsArr
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(_contents) { content in
                        NavigationLink {
                            if(content.name == "Text"){
                                VVText()
                            }else if(content.name == "Image"){
                                VVImage()
                            }else if(content.name == "StackView"){
                                VVStackView()
                            }else if(content.name == "ScrollView"){
                                VVScrollView()
                            }else if(content.name == "Button"){
                                VVButton()
                            }else if(content.name == "Gradient"){
                                VVGradient()
                            }else if(content.name == "State&Binding"){
                                VVState()
                            }else if(content.name == "Path"){
                                VVPath()
                            }else if(content.name == "Gesture"){
                                VVGestures()
                            }else if(content.name == "Form"){
                                VVForm()
                            }else if(content.name == "LazyGrid"){
                                VVLazyGrid()
                            }else if(content.name == "Combine"){
                                VVCombine()
                            }
                        } label: {
                            HStack {
                                Text(content.name)
                            }
                        }
                    }
                    .onDelete(perform: deleteRow(at:))
                    .onMove(perform: moveItem(from:to:))
                }
                .navigationTitle(Text("SwiftUI"))
//                .navigationBarItems(trailing: EditButton())
            }
        }
    }
    
    func deleteRow(at offsets:IndexSet){
        _contents.remove(atOffsets: offsets)
    }
    
    // 拖动排序方法
    func moveItem(from source: IndexSet, to destination: Int) {
        _contents.move(fromOffsets: source, toOffset: destination)
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
