//
//  ContentView.swift
//  SwiftUI_Grid_TUT
//
//  Created by 김선중 on 2021/02/04.
//

import SwiftUI

struct ContentView: View {
    
    //목록을 1부터 1000까지 만듬
    let data = Array(1...1000).map { "목록 \($0)"}
    
    //화면을 그리드형식으로 꽉채워줌
    let layout = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows:layout, spacing: 20) {
                ForEach(data, id: \.self) {i in
                    VStack {
                        Capsule()
                            .fill(Color.yellow)
                            .frame(height: 30)
                        Text(i)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
