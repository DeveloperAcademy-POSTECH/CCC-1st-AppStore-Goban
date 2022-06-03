//
//  cardView.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/01.
//

import SwiftUI

struct cardView: View {
    @State var thisWeekGames = GamesClassification().thisWeekGame
    var title : String
    var subTitle : String
    var style : Int
    var body: some View {
            VStack(alignment: .leading,spacing: 5){
                VStack(alignment:.leading,spacing: 5){
                    Text(subTitle)
                        .foregroundColor(.gray)
                        .font(.footnote)
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                .padding()
                //style1: listGridView
                if style == 1{
                    listGridView(thisWeekGames: $thisWeekGames)
                    Spacer()
                        .frame(width: 0, height: 0)
                        .padding([.bottom],30)
                }
                //style2: thumbnailGridView
                else if style == 2 {
                    
                }
                
            }
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 5, x: 1, y: 1)
                    .opacity(0.5)
            )
            .padding()
    }
}

struct cardView_Previews: PreviewProvider {
    static var previews: some View {
        cardView(title: "이번 주 인기게임", subTitle: "요즘 화제", style: 2)
    }
}
