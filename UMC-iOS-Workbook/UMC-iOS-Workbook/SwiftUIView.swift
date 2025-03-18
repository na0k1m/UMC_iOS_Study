//
//  SwiftUIView.swift
//  UMC-iOS-Workbook
//
//  Created by 김나영 on 3/17/25.
//

import SwiftUI

//struct SwiftUIView: View {
//    var body: some View {
//        Label("Favorites", systemImage: "star.fill")
//    }
//}

struct SwiftUIView: View {
    var body: some View {
           VStack {
               HStack {
                   Image(systemName: "person.fill")
                   Text("사용자 이름")
               }
               .padding()

               ZStack {
                   Rectangle()
                       .fill(Color.green)
                       .frame(width: 300, height: 150)
                   Text("ZStack 내부")
                       .font(.headline)
                       .foregroundStyle(.white)
               }
           }
       }
}

#Preview {
    SwiftUIView()
}
