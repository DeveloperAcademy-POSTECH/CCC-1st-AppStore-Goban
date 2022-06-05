//
//  listGridView.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/03.
//

import SwiftUI

struct listGridView: View {
    @State private var thisWeekGames = GamesClassification().thisWeekGame
    var body: some View {
        ForEach(thisWeekGames.indices, id: \.self){ index in
            HStack(spacing: 20){
                Image(thisWeekGames[index].thumbNali)
                    .cornerRadius(10)
                VStack(spacing: 5){
                    HStack{
                        VStack(alignment: .leading){
                            Text(thisWeekGames[index].title)
                                .fontWeight(.bold)
                            Text(thisWeekGames[index].subTitle)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        VStack{
                            Button(action: {}) {
                                Text("받기")
                                    .fontWeight(.bold)
                            }
                            .padding([.horizontal],25)
                            .padding([.vertical],5)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            Text("앱 내 구입")
                                .font(Font.system(size: 8))
                                .foregroundColor(.gray)
                        }
                    }
                    if index < 3{
                        Divider()
                    }
                }
            }
            .padding([.horizontal],20)
            .padding([.vertical],6)
        }

    }
}

struct listGridView_Previews: PreviewProvider {
    static var previews: some View {
        listGridView()
    }
}
