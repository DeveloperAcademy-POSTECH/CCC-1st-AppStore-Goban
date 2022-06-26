//
//  imageCardView.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/01.
//

import SwiftUI

struct cardImageView: View {
    @State private var imageHeight = CGFloat(100)
    var title: String
    var subTitle: String
    var firstGame = GameList().firstGame
    var body: some View {
        VStack(spacing: 10){
            GeometryReader{ proxy in
                VStack(spacing: 0){
                    VStack(alignment: .leading, spacing: 5){
                        Text(subTitle)
                            .foregroundColor(.gray)
                            .font(.subheadline)
                            .fontWeight(.bold)
                        Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(height: proxy.size.height * 0.25)
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding()
                    Spacer()
                        .frame(width: 0, height: 0)
                        .padding([.vertical],100)
                }
                .background(
                    Image("diabloImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: proxy.size.width)
                        .clipped()
                        .cornerRadius(20,corners: [.topLeft, .topRight])
                )
                .background(GeometryReader {gp -> Color in
                    DispatchQueue.main.async {
                        self.imageHeight = gp.size.height
                    }
                    return Color.clear
                })
            }
            .frame(height: imageHeight)
            //앱 정보
            HStack(spacing: 20){
                Image(firstGame.thumbNali)
                    .cornerRadius(10)
                VStack(spacing: 5){
                    HStack{
                        VStack(alignment: .leading){
                            Text(firstGame.title)
                                .fontWeight(.bold)
                            Text(firstGame.subTitle)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        VStack{
                            Button(action: {}) {
                                Text("받기")
                                    .fontWeight(.bold)
                            }
                            .padding(.horizontal,25)
                            .padding(.vertical,5)
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(20)
                            Text("앱 내 구입")
                                .font(Font.system(size: 8))
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .padding(.horizontal,20)
            .padding(.vertical,6)
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

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct cardImageView_Previews: PreviewProvider {
    static var previews: some View {
        cardImageView(title: "디아블로 이모탈 새로운 지옥으로!", subTitle: "최초 공개")
    }
}
