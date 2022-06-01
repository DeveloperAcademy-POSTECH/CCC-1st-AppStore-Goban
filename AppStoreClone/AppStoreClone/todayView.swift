//
//  SwiftUIView.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/01.
//

import SwiftUI

struct todayView: View {
    @State private var todayStr : String = ""
    var body: some View {
        ScrollView{
            VStack(alignment : .leading,spacing: 5){
                Text("\(todayStr)")
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
                //카드뷰 나열
                cardView()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .onAppear(perform: {
            //오늘 날짜 불러오기
            todayStr = getToday(toDayStr: &todayStr)
        })
    }
}

struct todayView_Previews: PreviewProvider {
    static var previews: some View {
        todayView()
    }
}
