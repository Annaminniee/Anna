//
//  WeightRecord.swift
//  MyDietDiaryApp
//
//  Created by 菊地原杏菜 on 2023/06/26.
//

import Foundation
import RealmSwift

class WeightRecord: Object {
    override static func primaryKey() -> String? {
        return "id"
    }
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var date: Date = Date()
    @objc dynamic var weight: Double = 0
}
