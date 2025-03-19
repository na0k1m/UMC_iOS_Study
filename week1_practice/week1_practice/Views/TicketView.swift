//
//  TicketView.swift
//  week1_practice
//
//  Created by 김나영 on 3/18/25.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        ZStack {
            Image(.background)
//                .frame(width: 385, height: 386, alignment: .center)
            VStack {
                Spacer().frame(height: 111)
                mainTitleGroup
                Spacer().frame(height: 134)
                mainBottomGroup
            }
        }
        .padding()
    }
    
    private var mainTitleGroup: some View {
        VStack {
            Group {
                Text("마이펫의 이중생활2")
                    .font(.PretendardBold30)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                Text("본인 + 동반 1인")
                    .font(.PretendardLight16)
                Text("30,100원")
                    .font(.PretendardBold24)
            }
            .foregroundStyle(Color.white)
        }
        .frame(height: 24)
//        .frame(height: 84) // 예시 코드에는 이렇게가 맞는데 아마 내 토끼 이미지 크기가 예시랑 달라서 그런듯?
    }
    
    private var mainBottomGroup: some View {
        Button(action: {
            print("hello")
        }, label: {
            VStack {
                Image(systemName: "chevron.up")
                    .resizable()
                    .frame(width: 18, height: 12)
                Text("예매하기")
                    .font(.PretendardSemiBold18)
            }
            .foregroundStyle(Color.white)
            .frame(width: 63, height: 40)
        })
    }
}

#Preview {
    TicketView()
}
