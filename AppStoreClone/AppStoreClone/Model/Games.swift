//
//  games.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/01.
//

import Foundation

struct GameList{
    let firstGame: GameInfo
    let thisWeekGame: [GameInfo]
    let CollectionGame: [GameInfo]
    init(){
        let GameInfo1 = GameInfo(id: 1, title: "디아블로 이모탈", subTitle: "전리품, 커스터마이징과 탐험", thumbNali: "diabloAppIconImage")
        let GameInfo2 = GameInfo(id: 2, title:"리니지M", subTitle: "LEGACY: 위대한 유산 업데이트", thumbNali: "lineageImage")
        let GameInfo3 = GameInfo(id: 3, title:"히어로 테일즈", subTitle: "스카이워커여, 신성무기를 모여 하늘성을 구해라!", thumbNali: "herotalesImage")
        let GameInfo4 = GameInfo(id: 4, title:"제2의 나라: Cross Worlds", subTitle: "마음속 깊이 간직했던 세계", thumbNali: "kunicrossworldsImage")
        let GameInfo5 = GameInfo(id: 5, title: "퍼펙트 아레나", subTitle: "완벽한 액션을 디자인하라!", thumbNali: "perfectareanaImage")
        firstGame = GameInfo1
        thisWeekGame = [GameInfo2, GameInfo3, GameInfo4, GameInfo5]
        CollectionGame = [GameInfo2, GameInfo3, GameInfo4, GameInfo5]
    }
}

struct GameInfo{
    let id: Int
    let title: String
    let subTitle: String
    let thumbNali: String
}
