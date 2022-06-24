//
//  SwiftUIView.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/01.
//

import SwiftUI

struct todayView: View {
    @State private var todayStr : String = Date().getToday()
    var body: some View {
        ScrollView{
            VStack(alignment : .leading,spacing: 0){
                VStack(alignment: .leading){
                    Text(todayStr)
                        .foregroundColor(.gray)
                        .font(.footnote)
                    HStack{
                        Text("투데이")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "person.crop.circle")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                    }
                }
                .padding([.horizontal,.top])
                //카드뷰 나열
                cardImageView(title: "디아블로 이모탈 새로운 지옥으로!", subTitle: "최초 공개")
                cardView(title: "이번 주 인기게임", subTitle: "요즘 화제", style: 1)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(UIColor.systemGray6).opacity(0.6))
    }
}

struct todayView_Previews: PreviewProvider {
    static var previews: some View {
        todayView()
    }
}
