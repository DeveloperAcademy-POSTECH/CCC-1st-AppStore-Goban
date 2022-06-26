//
//  utill.swift
//  AppStoreClone
//
//  Created by Lee Myeonghwan on 2022/06/01.
//

import Foundation

extension Date {
    func getToday() -> String {
        let todayNowDate = Date()
        let todayDateFormatter = DateFormatter()
        todayDateFormatter.locale = Locale(identifier: "ko_KR")
        todayDateFormatter.dateFormat = "MMM d일 EEEE"
        return todayDateFormatter.string(from: todayNowDate)
    }
}
