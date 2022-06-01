//
//  cardView.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/01.
//

import SwiftUI

struct cardView: View {
    var body: some View {
        VStack(){
            VStack(alignment:.leading,spacing: 5){
                Text("요즘 화제")
                    .foregroundColor(.gray)
                    .font(.footnote)
                Text("이번 주 인기게임")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            .padding()
            //style1: listGridView
            //style2: thumbnailGridView
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB,red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
    
}

struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        cardView()
    }
}
