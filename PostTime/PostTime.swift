//
//  PostTime.swift
//  PostTime
//
//  Created by udn on 2018/10/3.
//  Copyright © 2018 dengli. All rights reserved.
//

import Foundation

public class PostTime {
    let postDate: Date
    let currentDate = Date()
    
    init(postDate: TimeInterval) {
        self.postDate = Date(timeIntervalSince1970: postDate)
    }

    public func howLongAgo() -> String {
        let components = Calendar.current.dateComponents([.year, .month, .weekOfYear, .day, .hour, .minute, .second], from: postDate, to: currentDate)
        if let year = components.year, year != 0 {
            if year == 1 { return "A year."}
            return "\(year) years."
        }
        if let month = components.month, month != 0{
            if month == 1 { return "A month."}
            return "\(month) months."
        }
        if let week = components.weekOfYear, week != 0 {
            if week == 1 { return "A week."}
            return "\(week) weeks."
        }
        if let day = components.day, day != 0 {
            if day == 1 { return "A day"}
            return "\(day) days."
        }
        if let hour = components.hour, hour != 0 {
            return "\(hour) hr."
        }
        if let minute = components.minute, minute != 0 {
            return "\(minute) min."
        }
        if let second = components.second, second != 0 {
            return "\(second) sec."
        }
        return ""
    }
}













