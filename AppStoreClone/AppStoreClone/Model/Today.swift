//
//  Today.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/01.
//

import Foundation

func getToday(toDayStr: inout String)->String{
    let todayNowDate = Date()
    let todayDateFormatter = DateFormatter()
    todayDateFormatter.locale = Locale(identifier: "ko_KR")
    todayDateFormatter.dateFormat = "MMM d일 EEEE"
    toDayStr = todayDateFormatter.string(from: todayNowDate)
    return toDayStr
}
